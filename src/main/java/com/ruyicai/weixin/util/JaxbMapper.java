package com.ruyicai.weixin.util;

import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Collection;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBElement;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;
import javax.xml.bind.annotation.XmlAnyElement;
import javax.xml.namespace.QName;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.Validate;

import com.sun.xml.bind.marshaller.CharacterEscapeHandler;

/**
 * 使用Jaxb2.0实现XML<->Java Object的Mapper.
 * 
 * 在创建时需要设定所有需要序列化的Root对象的Class.
 * 特别支持Root对象是Collection的情形.
 * 
 */
@SuppressWarnings("rawtypes")
public class JaxbMapper {

	private static ConcurrentMap<Class, JAXBContext> jaxbContexts = new ConcurrentHashMap<Class, JAXBContext>();

	/**
	 * Java Object->Xml without encoding.
	 * 
	 * @throws JAXBException
	 */
	public static String toXml(Object root, boolean fragment) throws JAXBException {
		Class clazz = Reflections.getUserClass(root);
		return toXml(root, clazz, null, fragment);
	}

	/**
	 * Java Object->Xml with encoding.
	 * 
	 * @throws JAXBException
	 */
	public static String toXml(Object root, String encoding, boolean fragment) throws JAXBException {
		Class clazz = Reflections.getUserClass(root);
		return toXml(root, clazz, encoding, fragment);
	}

	/**
	 * Java Object->Xml with encoding.
	 * 
	 * @throws JAXBException
	 */
	public static String toXml(Object root, Class clazz, String encoding, boolean fragment) throws JAXBException {
		StringWriter writer = new StringWriter();
		createMarshaller(clazz, encoding, fragment).marshal(root, writer);
		return writer.toString();
	}

	/**
	 * Java Collection->Xml without encoding, 特别支持Root Element是Collection的情形.
	 * 
	 * @throws JAXBException
	 */
	public static String toXml(Collection<?> root, String rootName, Class clazz, boolean fragment) throws JAXBException {
		return toXml(root, rootName, clazz, null, fragment);
	}

	/**
	 * Java Collection->Xml with encoding, 特别支持Root Element是Collection的情形.
	 * 
	 * @throws JAXBException
	 */
	public static String toXml(Collection<?> root, String rootName, Class clazz, String encoding, boolean fragment)
			throws JAXBException {
		CollectionWrapper wrapper = new CollectionWrapper();
		wrapper.collection = root;

		JAXBElement<CollectionWrapper> wrapperElement = new JAXBElement<CollectionWrapper>(new QName(rootName),
				CollectionWrapper.class, wrapper);

		StringWriter writer = new StringWriter();
		createMarshaller(clazz, encoding, fragment).marshal(wrapperElement, writer);

		return writer.toString();
	}

	/**
	 * Xml->Java Object.
	 * 
	 * @throws JAXBException
	 */
	@SuppressWarnings("unchecked")
	public static <T> T fromXml(String xml, Class<T> clazz) throws JAXBException {
		StringReader reader = new StringReader(xml);
		return (T) createUnmarshaller(clazz).unmarshal(reader);
	}

	/**
	 * 创建Marshaller并设定encoding(可为null).
	 * 线程不安全，需要每次创建或pooling。
	 * 
	 * @throws JAXBException
	 */
	public static Marshaller createMarshaller(Class clazz, String encoding, boolean fragment) throws JAXBException {
		JAXBContext jaxbContext = getJaxbContext(clazz);

		Marshaller marshaller = jaxbContext.createMarshaller();

		marshaller.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, Boolean.TRUE);
		marshaller.setProperty(Marshaller.JAXB_FRAGMENT, fragment);
		marshaller.setProperty("com.sun.xml.bind.characterEscapeHandler", new CharacterEscapeHandler() {
			@Override
			public void escape(char[] ch, int start, int length, boolean isAttVal, Writer writer) throws IOException {
				writer.write(ch, start, length);
			}
		});

		if (StringUtils.isNotBlank(encoding)) {
			marshaller.setProperty(Marshaller.JAXB_ENCODING, encoding);
		}

		return marshaller;
	}

	/**
	 * 创建UnMarshaller.
	 * 线程不安全，需要每次创建或pooling。
	 * 
	 * @throws JAXBException
	 */
	public static Unmarshaller createUnmarshaller(Class clazz) throws JAXBException {
		JAXBContext jaxbContext = getJaxbContext(clazz);
		return jaxbContext.createUnmarshaller();
	}

	protected static JAXBContext getJaxbContext(Class clazz) {
		Validate.notNull(clazz, "'clazz' must not be null");
		JAXBContext jaxbContext = jaxbContexts.get(clazz);
		if (jaxbContext == null) {
			try {
				jaxbContext = JAXBContext.newInstance(clazz, CollectionWrapper.class);
				jaxbContexts.putIfAbsent(clazz, jaxbContext);
			} catch (JAXBException ex) {
				throw new RuntimeException("Could not instantiate JAXBContext for class [" + clazz + "]: "
						+ ex.getMessage(), ex);
			}
		}
		return jaxbContext;
	}

	/**
	 * 封装Root Element 是 Collection的情况.
	 */
	public static class CollectionWrapper {

		@XmlAnyElement
		protected Collection<?> collection;
	}
}

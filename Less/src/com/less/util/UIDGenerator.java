package com.less.util;

import java.security.SecureRandom;

/**
 * @author Alberto
 */
public class UIDGenerator {
	/**
	 * @uml.property name="guidgen"
	 * @uml.associationEnd
	 */
	private static UIDGenerator guidgen;
	private SecureRandom random;

	private UIDGenerator() {
		this.random = new SecureRandom();
	}

	public static synchronized UIDGenerator getInstance() {
		if (guidgen == null) {
			guidgen = new UIDGenerator();
		}
		return guidgen;
	}

	public String getKey() {
		String key = "" + System.currentTimeMillis()
				+ Long.toHexString(random.nextInt());
		return key;
	}
}
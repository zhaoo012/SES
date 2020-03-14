/**
 * 
 */
package com.xawl.pojo;

/**
 * <p>Title:Echart
 * <p>Description:<p>
 * @author Twenty-seven
 * @date 2020年2月13日 下午12:52:15
 */
public class Echart {
	
	
	private int value;
	private String name;
	/**
	 * @return the value
	 */
	public int getValue() {
		return value;
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param value the value to set
	 */
	public void setValue(int value) {
		this.value = value;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Echart [value=" + value + ", name=" + name + "]";
	}

	
	
}

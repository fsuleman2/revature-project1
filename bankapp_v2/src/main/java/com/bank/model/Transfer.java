package com.bank.model;

public class Transfer {
private String creditorname;
private float transferamount;
public Transfer() {
	// TODO Auto-generated constructor stub
}
@Override
public int hashCode() {
	final int prime = 31;
	int result = 1;
	result = prime * result + ((creditorname == null) ? 0 : creditorname.hashCode());
	result = prime * result + Float.floatToIntBits(transferamount);
	return result;
}
@Override
public boolean equals(Object obj) {
	if (this == obj)
		return true;
	if (obj == null)
		return false;
	if (getClass() != obj.getClass())
		return false;
	Transfer other = (Transfer) obj;
	if (creditorname == null) {
		if (other.creditorname != null)
			return false;
	} else if (!creditorname.equals(other.creditorname))
		return false;
	if (Float.floatToIntBits(transferamount) != Float.floatToIntBits(other.transferamount))
		return false;
	return true;
}
public String getCreditorname() {
	return creditorname;
}
public void setCreditorname(String creditorname) {
	this.creditorname = creditorname;
}
public float getTransferamount() {
	return transferamount;
}
public void setTransferamount(float transferamount) {
	this.transferamount = transferamount;
}
public Transfer(String creditorname, float transferamount) {
	super();
	this.creditorname = creditorname;
	this.transferamount = transferamount;
}
@Override
public String toString() {
	return "Transfer [creditorname=" + creditorname + ", transferamount=" + transferamount + "]";
}


}

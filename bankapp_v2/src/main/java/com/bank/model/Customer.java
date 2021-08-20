package com.bank.model;

public class Customer {
	//for Customer Login
			private String custUserName;
			private String CustPassword;
			public Customer() {
				// TODO Auto-generated constructor stub
			}
			public Customer(String custUserName, String custPassword) {
				super();
				this.custUserName = custUserName;
				CustPassword = custPassword;
			}
			public String getCustUserName() {
				return custUserName;
			}
			public void setCustUserName(String custUserName) {
				this.custUserName = custUserName;
			}
			public String getCustPassword() {
				return CustPassword;
			}
			public void setCustPassword(String custPassword) {
				CustPassword = custPassword;
			}
			@Override
			public int hashCode() {
				final int prime = 31;
				int result = 1;
				result = prime * result + ((CustPassword == null) ? 0 : CustPassword.hashCode());
				result = prime * result + ((custUserName == null) ? 0 : custUserName.hashCode());
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
				Customer other = (Customer) obj;
				if (CustPassword == null) {
					if (other.CustPassword != null)
						return false;
				} else if (!CustPassword.equals(other.CustPassword))
					return false;
				if (custUserName == null) {
					if (other.custUserName != null)
						return false;
				} else if (!custUserName.equals(other.custUserName))
					return false;
				return true;
			}
}

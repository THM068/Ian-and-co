package com.ianandco

import org.apache.commons.lang.builder.HashCodeBuilder

class CmsUserCmsRole implements Serializable {

	CmsUser cmsUser
	CmsRole cmsRole

	boolean equals(other) {
		if (!(other instanceof CmsUserCmsRole)) {
			return false
		}

		other.cmsUser?.id == cmsUser?.id &&
			other.cmsRole?.id == cmsRole?.id
	}

	int hashCode() {
		def builder = new HashCodeBuilder()
		if (cmsUser) builder.append(cmsUser.id)
		if (cmsRole) builder.append(cmsRole.id)
		builder.toHashCode()
	}

	static CmsUserCmsRole get(long cmsUserId, long cmsRoleId) {
		find 'from CmsUserCmsRole where cmsUser.id=:cmsUserId and cmsRole.id=:cmsRoleId',
			[cmsUserId: cmsUserId, cmsRoleId: cmsRoleId]
	}

	static CmsUserCmsRole create(CmsUser cmsUser, CmsRole cmsRole, boolean flush = false) {
		new CmsUserCmsRole(cmsUser: cmsUser, cmsRole: cmsRole).save(flush: flush, insert: true)
	}

	static boolean remove(CmsUser cmsUser, CmsRole cmsRole, boolean flush = false) {
		CmsUserCmsRole instance = CmsUserCmsRole.findByCmsUserAndCmsRole(cmsUser, cmsRole)
		if (!instance) {
			return false
		}

		instance.delete(flush: flush)
		true
	}

	static void removeAll(CmsUser cmsUser) {
		executeUpdate 'DELETE FROM CmsUserCmsRole WHERE cmsUser=:cmsUser', [cmsUser: cmsUser]
	}

	static void removeAll(CmsRole cmsRole) {
		executeUpdate 'DELETE FROM CmsUserCmsRole WHERE cmsRole=:cmsRole', [cmsRole: cmsRole]
	}

	static mapping = {
		id composite: ['cmsRole', 'cmsUser']
		version false
	}
}

# Copyright (C) 2022 Greenbone Networks GmbH
# Some text descriptions might be excerpted from (a) referenced
# source(s), and are Copyright (C) by the respective right holder(s).
#
# SPDX-License-Identifier: GPL-2.0-or-later
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.821824");
  script_version("2022-07-22T12:11:58+0000");
  script_cve_id("CVE-2022-24675", "CVE-2022-28327", "CVE-2022-29526", "CVE-2022-21698", "CVE-2022-1996");
  script_tag(name:"cvss_base", value:"6.4");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:P/A:N");
  script_tag(name:"last_modification", value:"2022-07-22 12:11:58 +0000 (Fri, 22 Jul 2022)");
  script_tag(name:"severity_vector", value:"CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:N");
  script_tag(name:"severity_origin", value:"NVD");
  script_tag(name:"severity_date", value:"2022-06-16 12:54:00 +0000 (Thu, 16 Jun 2022)");
  script_tag(name:"creation_date", value:"2022-07-18 01:29:54 +0000 (Mon, 18 Jul 2022)");
  script_name("Fedora: Security Advisory for golang-github-a8m-envsubst (FEDORA-2022-3969b64d4b)");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2022 Greenbone Networks GmbH");
  script_family("Fedora Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/fedora", "ssh/login/rpms", re:"ssh/login/release=FC35");

  script_xref(name:"Advisory-ID", value:"FEDORA-2022-3969b64d4b");
  script_xref(name:"URL", value:"https://lists.fedoraproject.org/archives/list/package-announce%40lists.fedoraproject.org/message/QUVVAUXY2QAYIHGFIMSB6IHXTSMFH6DV");

  script_tag(name:"summary", value:"The remote host is missing an update for the 'golang-github-a8m-envsubst'
  package(s) announced via the FEDORA-2022-3969b64d4b advisory.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable package version is present on the target host.");

  script_tag(name:"insight", value:"Go package for substituting environment variables.");

  script_tag(name:"affected", value:"'golang-github-a8m-envsubst' package(s) on Fedora 35.");

  script_tag(name:"solution", value:"Please install the updated package(s).");

  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-rpm.inc");

release = rpm_get_ssh_release();
if(!release)
  exit(0);

res = "";
report = "";

if(release == "FC35") {

  if(!isnull(res = isrpmvuln(pkg:"golang-github-a8m-envsubst", rpm:"golang-github-a8m-envsubst~1.3.0~2.fc35", rls:"FC35"))) {
    report += res;
  }

  if(report != "") {
    security_message(data:report);
  } else if(__pkg_match) {
    exit(99);
  }
  exit(0);
}

exit(0);
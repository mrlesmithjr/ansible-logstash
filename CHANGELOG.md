commit 5afa3dcedaf5f96a0fa68d22d9edf0864252df3b
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Wed Aug 26 23:40:00 2020 -0400

    Updated CI tests

commit 2bf070421b853d706858a9d56b611060d1cdc4c2
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Wed Aug 26 23:38:50 2020 -0400

    Updated Python requirements

commit 4121eca20078829a822011d3a3014af2eb51595b
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Wed Aug 26 23:38:12 2020 -0400

    Updated Molecule tests

commit e6046f4943d60686c2ee4ecff54583a625a133c4
Author: Evans Murithi <murithievans80@gmail.com>
Date:   Wed Aug 26 16:39:26 2020 +0300

    Use '~' instead of '+' for string concatenation
    
    Use `~` during string concatenation as it converts all operands into
    strings first. `+` operator is not preferred for string concatenation.
    https://jinja.palletsprojects.com/en/2.11.x/templates/#other-operators
    
    Fixes mrlesmithjr#25

commit f25b7d77cf14079d3a9da1fc3a06380dc2588601
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Fri Jun 19 09:43:44 2020 -0400

    Fixing BS GPG Key Issue
    
    https://discuss.elastic.co/t/official-apt-repository-451-unavailable-for-legal-reasons/232494

commit 9149132bdf5fb7374e5a0eb9bbf93cf2e573fa76
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Thu Jun 18 20:36:31 2020 -0400

    Updated to version 7.8.0
    
    Also updated validation that host meets memory requirements. Now using
    assertion.

commit 91fd66a93a0a5796a89153d75a296a33000c83bd
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Thu Jun 18 19:58:35 2020 -0400

    Added gnupg Debian pre-req
    
    Debian based systems require gpg command to add Elastic repo

commit cefedeb9eb883b2987c803e47feb749d988b8502
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Thu Jun 18 19:55:55 2020 -0400

    Updated Python Reqs
    
    Also had to update CI tests to account for new Python reqs and
    processes. Ubuntu 20.04 Molecule test added as well.

commit b204d8933ad653c0ac75ca7c935da94dddda28da
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Sun Apr 5 23:25:03 2020 -0400

    Fixing Debian10 OpenJDK version

commit 7eaa9c25761a0dc67cb83a58307f8622536a3422
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Sun Apr 5 23:14:53 2020 -0400

    Fixing incorrect distribution version fact

commit 48bdff6693be6a4aff5c0660eae73fea22a6f44e
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Sun Apr 5 23:08:42 2020 -0400

    Fixing syntax issue with conditionals

commit 562df9a8a5bd9b23806a718f08352b773a25eb62
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Sun Apr 5 23:03:17 2020 -0400

    Changed include to include_tasks

commit bc3a466693698bdbc15e98bec7709788877111f9
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Sun Apr 5 23:02:56 2020 -0400

    Fixing set facts

commit d76f355c3f2c331272594209af1fda6b0ca831d6
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Sun Apr 5 22:41:14 2020 -0400

    Changed to latest version and commented out plugins

commit d206271a30c07e8cc6bb57da1af3a944de23c0bb
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Sun Apr 5 22:20:31 2020 -0400

    Fixed linting issues

commit 1bd7e3731835185525a121dd481ee808b20c804a
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Sun Apr 5 22:03:08 2020 -0400

    Updated files, etc. after new structure
    
    This aligns to cookiecutter template

commit 97b5d0bedaf4276e7378ae7d2acb5ef583a031f3
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Sun Apr 5 21:58:00 2020 -0400

    Added: New files, etc. from cookiecutter template

commit bbf12179aee82c65eb65a4daa21900bbbe1893e4
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Sun Apr 5 21:56:15 2020 -0400

    Deleted old tests, etc. not needed
    
    These files are no longer required for new format

commit aa9536332e6f4a36df823aa2ef0e77bfe8852ba3
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Wed Feb 6 08:25:32 2019 -0500

    Fixed YAML lint issue

commit 396babf3f4c75e1b603ab6ca7b5fa2244a1f2cd1
Author: Jason Rogena <jasonrogena@gmail.com>
Date:   Tue Feb 5 15:48:09 2019 +0300

    Use the Logstash User and Group Vars Globally
    
    Since the logstash_system_user private variable has been accepted as
    acceptable for defining the system user, migrate all the tasks to use
    that variable (when referring to the user) and logstash_system_group for
    the user's primary group.
    
    Signed-off-by: Jason Rogena <jasonrogena@gmail.com>

commit 25b6d067a7a52092a496a432d75aa2a77659eb57
Author: Jason Rogena <jasonrogena@gmail.com>
Date:   Fri Feb 1 21:41:58 2019 +0300

    Add logstash_system_groups Configurable Var
    
    Adding the logstash_system_groups variable will allow us to specify
    which system groups the logstash user will be part of.
    
    Fixes mrlesmithjr/ansible-logstash#18
    
    Signed-off-by: Jason Rogena <jasonrogena@gmail.com>

commit 11ed353ec02ab5c846a6011a9bd0ba15b3cc082e
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Fri Jan 4 13:51:17 2019 -0500

    Fixed RabbitMQ settings

commit f0613fcf8c7d186f2e0cfdd6269ecefa5f381fd4
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Fri Jan 4 13:50:56 2019 -0500

    Fixed configuration folder permissions

commit f80ee2b6c4ebd15d9eb6448c71923165a03c5f98
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Fri Jan 4 12:07:16 2019 -0500

    Disabled troublesome distros until further investigation

commit b7104749afab369babb54fa5bfc44e646486aa58
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Fri Jan 4 08:24:33 2019 -0500

    Disabled Fedora 29 until further investigation

commit 9815185e04c1843b38ae86db5bb19db7756f7e19
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Fri Jan 4 08:23:26 2019 -0500

    Changed Java version definition method

commit 00fa6276b81610bcb810cd621e2ac65d4e365763
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Fri Jan 4 01:00:07 2019 -0500

    First commit of refactoring
    
    Cleaned up code based on Ansible lint and YAML lint
    Implemented updated Travis CI testing
    Changed plugin management to use Ansible module

commit bca8949b133d2618988161b48c2c593025846519
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Sat Mar 3 09:51:57 2018 -0500

    Added add'l RabbitMQ configuration options.

commit c8496a9694d9696962bc95e1b32d605c44ba73f5
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Sun Nov 12 15:26:58 2017 -0500

    Resolves #15
    
    Also cleaned up variable formatting a bit.

commit 84ebc8889e4a8b9b673406a9c47fb46347caa8cb
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Fri Nov 10 08:20:05 2017 -0500

    Resolves #13

commit aa39d0ad83ed73ea60cde5642177612cfba4e760
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Sun Jul 2 10:36:30 2017 -0400

    updated to version 5.4.3
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.com>

commit edf17618c993c808e2f31aa3e0a2447b6a9e77e7
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Sun Jul 2 10:22:09 2017 -0400

    Updated to version 5.4.2
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.com>

commit 4f6346f159b894639fffc316c8debea5753f8cc6
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Sun Jul 2 10:10:09 2017 -0400

    Resolves #10
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.com>

commit 3bcfd08d0e4cf55b15c142b33d36bfa33cae7a72
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Sun Jul 2 01:49:41 2017 -0400

    updated to version 5.4.1
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.com>

commit 3652e7b21ac02857db6e3a764c2b470fd08898a3
Author: Pablo Estigarribia <pablo.estigarribia@visitor.upm.com>
Date:   Tue Jun 13 09:42:36 2017 -0300

    fix issues when installing plugins through proxy with authentication

commit 42137e45af8c166542e995de30f688cd7b972067
Author: Pablo Estigarribia <pablo.estigarribia@visitor.upm.com>
Date:   Thu Jun 8 15:31:14 2017 -0300

    allow downgrades when user desires it

commit cc77087f89aa98f6e9cf8d836ccec65e06e03983
Author: Pablo Estigarribia <pablo.estigarribia@visitor.upm.com>
Date:   Thu Jun 8 15:20:12 2017 -0300

    trying to change from minor version generic to Pin priority on APT - fix owner

commit 145131f5ec63f281e046e86f72aa6cde11cfa885
Author: Pablo Estigarribia <pablo.estigarribia@visitor.upm.com>
Date:   Thu Jun 8 15:18:09 2017 -0300

    trying to change from minor version generic to Pin priority on APT - adding missing template

commit 2380bcb88e1a92a45b2a3df136675f280aef4c50
Author: Pablo Estigarribia <pablo.estigarribia@visitor.upm.com>
Date:   Thu Jun 8 15:16:24 2017 -0300

    trying to change from minor version generic to Pin priority on APT

commit 028a7e478d66ea624236d7a1ecba50ce361615bb
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Thu Jun 1 22:35:23 2017 -0400

    Addresses issue/enhancement #6
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.com>

commit a93eec238795c0036b2c4559530ea9f3ae3c60ec
Author: Eduard Babayan <edo248@gmail.com>
Date:   Thu Jun 1 18:04:20 2017 +0400

    Renamed apt update task, added condition to run only if repo was added

commit 7cdce825e412c28523c5a10b52d0cb1738f90ee8
Author: Eduard Babayan <edo248@gmail.com>
Date:   Thu Jun 1 13:47:06 2017 +0000

    added 'apt update' task after repo addition

commit 5876b095d7d79b578191679d50700f6be6eb41b7
Author: Pablo Estigarribia <pablo.estigarribia@visitor.upm.com>
Date:   Tue May 30 16:39:35 2017 -0300

    fix errors when upgrading

commit 53cafc488d8b54ca152decb87088d81df5a893d0
Author: pablodav <pablodav@gmail.com>
Date:   Thu Mar 2 15:25:45 2017 -0300

    Added custom filters and inputs, added test of config

commit 0c048ff277f1a74d8d1aa73c36ce876d06f26e83
Author: pablodav <pablodav@gmail.com>
Date:   Thu Mar 2 11:48:43 2017 -0300

    Added custom filters and inputs, added test of config

commit 6961d21c80aa1b608a741e5fcb9877b7e2550181
Author: pablodav <pablodav@gmail.com>
Date:   Tue Feb 7 17:10:05 2017 -0300

    * Added optional java install
    * changed default java to 8 when possible (logstash 5.x doesn't works with java 7)
    * Added comments for templates base
    * Added logstash_custom_outputs:
    * fix on permissions
    * removed validate due to issues with ansible

commit abf7f4cf0ba281cc754e742a7cf7e9ac145d87f2
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Fri Feb 3 22:56:20 2017 -0500

    Added missing plugins and added timer to notification on memory.
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.com>

commit 2613f1af7b46609641e325d323e49c0e02586206
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Fri Feb 3 22:54:48 2017 -0500

    Addresses issue #2
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.com>

commit d92b7ea125ce15d3047b9d3d36c71f711c687dd8
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Thu Feb 2 21:25:25 2017 -0500

    First Commit of 5.x
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.com>

commit 85d4219546b8a8814d891ae48715c676572e14b3
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Thu Oct 6 15:53:19 2016 -0400

    Updated changes
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.com>

commit 6a1e7c2fb6dc0471f960db4ee5f0459122360d8d
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Thu Oct 6 15:48:54 2016 -0400

    Updated changes
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.com>

commit ffb7ca9835ae0751e6745cd14dad7dc4f3b8dd88
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Thu Oct 6 15:46:02 2016 -0400

    Addresses issue #1
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.com>

commit d7671575f7837ffdd283d4166666096357b709dc
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Thu Oct 6 15:25:49 2016 -0400

    Updated latest changes
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.com>

commit 53667c609a1b871202b46ece4c6afe563a3b80cb
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Thu Oct 6 14:45:33 2016 -0400

    First commit of version 2.4.0
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.com>

commit 5dcb0b30cf3f836e11583331b45aac9dc0b39369
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Thu Oct 6 14:44:23 2016 -0400

    First commit of version 2.3.4
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.com>

commit 74edb7c15ea78ea98c31b605b33d6d888a5b1c1b
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Thu Oct 6 14:43:41 2016 -0400

    First commit of version 2.3.3
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.com>

commit cebe18e7cd6a9bbdc84459e0b20896279a054b8b
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Thu Oct 6 14:42:57 2016 -0400

    First commit of version 2.3.2
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.com>

commit 47625fd87f8f32238e3e121d1920ad26c5ae3172
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Thu Oct 6 14:41:48 2016 -0400

    First commit of version 2.3.1
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.com>

commit c94fbcf0edaba9e49a591bd41b780744434b6fc6
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Thu Oct 6 14:29:31 2016 -0400

    Updated Repo Info
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.com>

commit 0d1cd9c74d3b2e94b7ea7434deb84bafd9f3dc9d
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Thu Oct 6 09:59:59 2016 -0400

    First commit of version 2.3.0
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.com>

commit d0a21dd044de2323e00e95981564cfd34314549d
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Thu Oct 6 00:58:52 2016 -0400

    Added changes
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.com>

commit 8e71ee0f6b4cfaeda5951d42c25b44846e0050b5
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Mon Jul 25 13:54:27 2016 -0400

    Disabled NMAP plugin....
    This plugin seems to be failing to install
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.com>

commit a5341aa36a3af1f89b47a59d126a09db46a49f0b
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Wed Jun 22 19:47:42 2016 -0400

    Cleaned up formatting
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.com>

commit 7fa38eae81f78e2a98a84dfb051321027fb34e17
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Wed Jun 22 19:45:12 2016 -0400

    Cleaned up formatting
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.com>

commit a7049dbb94a030af8021a7c609d406597bba9556
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Wed Jun 22 10:01:26 2016 -0700

    Updated role info
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.com>

commit b8f4528228375e4e7582bd2da9839f13dbeb8352
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Wed Jun 22 10:01:01 2016 -0700

    Cleaned up formatting
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.com>

commit efd18c27715c5490129f8c4b0718eaf4067685dc
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Wed Jun 22 09:56:35 2016 -0700

    Cleaned up formatting
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.com>

commit f2a51e15f2cc04f7f3471d00649248755479b452
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Wed Jun 22 09:54:15 2016 -0700

    Cleaned up formatting
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.com>

commit 554dcde90e08b4fff9c2b7f23d588d4dbc050ddf
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Wed Jun 22 09:53:02 2016 -0700

    Cleaned up formatting
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.com>

commit 6cdc2d6837eb1f43a411a343b6ae96c734c1e476
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Thu Jun 16 15:52:02 2016 -0400

    Added elasticsearch output support
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.com>

commit 1d12f3c11148c92231911048d63ad0232c79be0c
Author: Larry Smith Jr <mrlesmithjr@gmail.coml>
Date:   Thu May 5 11:35:08 2016 -0400

    Changed plugin collection to be idempotent
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.coml>

commit 92c421152ceb6e00e5396177e0401c4281530e58
Author: Larry Smith Jr <mrlesmithjr@gmail.coml>
Date:   Tue Apr 5 18:10:25 2016 -0400

    Added task to ensure logstash is enabled on boot
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.coml>

commit b964441dd0c0be5ec2eb231c400930224d37c59c
Author: Larry Smith Jr <mrlesmithjr@gmail.coml>
Date:   Tue Mar 8 07:45:19 2016 -0500

    Fixed Docker build
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.coml>

commit 6be11bd3e60e0d9c1278e23fd8e3fdc6cb6a2f1b
Author: Larry Smith Jr <mrlesmithjr@gmail.coml>
Date:   Mon Mar 7 16:05:06 2016 -0500

    Added CentOS, Fedora and Debian support
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.coml>

commit 58b07e3e417d80510393feea8d4d43db55e89f2b
Author: Larry Smith Jr <mrlesmithjr@gmail.coml>
Date:   Mon Mar 7 11:27:38 2016 -0500

    Added Debian Jessie support
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.coml>

commit 72bbc3f468cbe6b448084e24d761eee8d19b5138
Author: Larry Smith Jr <mrlesmithjr@gmail.coml>
Date:   Mon Mar 7 10:49:41 2016 -0500

    Updated Vagrant info
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.coml>

commit e1b48ff38624a0db86af1af7adbaddef82948376
Author: Larry Smith Jr <mrlesmithjr@gmail.coml>
Date:   Mon Mar 7 10:47:55 2016 -0500

    Updated Vagrant build
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.coml>

commit 50f9f67001363dba31d5a62fed70b22526b328ab
Author: Larry Smith Jr <mrlesmithjr@gmail.coml>
Date:   Mon Mar 7 10:47:20 2016 -0500

    Updated Docker build
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.coml>

commit 7befc74f0c6ed29bf68e731cbd61f14f8635624d
Author: Larry Smith Jr <mrlesmithjr@gmail.coml>
Date:   Sat Feb 13 12:46:47 2016 -0500

    Added Vagrant build
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.coml>

commit ae2ca1479684c191443103935375c8466dcec4fe
Author: Larry Smith Jr <mrlesmithjr@gmail.coml>
Date:   Sat Feb 13 12:46:33 2016 -0500

    Added/updated inputs
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.coml>

commit c4040fecfceff8124c2db05c9c597edd954931e6
Author: Larry Smith Jr <mrlesmithjr@gmail.coml>
Date:   Thu Feb 11 13:58:12 2016 -0500

    Added Docker info
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.coml>

commit 6ad7a0b8df4fb6f89aae4aa59e47abae81f27240
Author: Larry Smith Jr <mrlesmithjr@gmail.coml>
Date:   Thu Feb 11 13:35:03 2016 -0500

    Added config logstash var
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.coml>

commit 225159b83ab363017d52be05967389bf0d03b661
Author: Larry Smith Jr <mrlesmithjr@gmail.coml>
Date:   Thu Feb 11 13:02:06 2016 -0500

    Updated to version 2.2
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.coml>

commit fc7d5296ef1f02a651eeda71d233815b901efd4a
Author: Larry Smith Jr <mrlesmithjr@gmail.coml>
Date:   Thu Feb 11 08:35:34 2016 -0500

    Changed repo key link
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.coml>

commit 50f78c5efce16b74d1c19741f93cf99c53c2d4ee
Author: Larry Smith Jr <mrlesmithjr@gmail.coml>
Date:   Thu Feb 11 07:41:47 2016 -0500

    Changed version to 2.0
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.coml>

commit 6f25a499aeb5e522704d3cc8a339d42cced02ae9
Author: Larry Smith Jr <mrlesmithjr@gmail.coml>
Date:   Sun Jan 31 21:19:54 2016 -0500

    Commented out jira plugin
    
    Issues installing with Logstash 2.x
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.coml>

commit 4c19e5f162ae24cda4b09a775c92d6832a94bbc6
Author: Larry Smith Jr <mrlesmithjr@gmail.coml>
Date:   Sun Jan 31 16:07:27 2016 -0500

    Added NMAP filter codec
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.coml>

commit 987fa2977a077e2fa77918d700c48b8417639b76
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Sat Jan 2 13:47:38 2016 -0500

    updated Docker build
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.com>

commit 04e780155f7d29064d4263275a1f372c79d8b0cb
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Sat Jan 2 02:00:05 2016 -0500

    Updated Docker Image to use
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.com>

commit cf456c26c20855226e8b677a9d6869400818a8f8
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Wed Dec 23 09:43:02 2015 -0500

    Made docker script executable
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.com>

commit b17ffe19a3b3a373dc6f99c7f441fc11b3fa51b9
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Wed Dec 23 08:59:32 2015 -0500

    Fixed failing plugin install
    
    The jira plugin is failing to install. I have disabled this plugin
    for now.
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.com>

commit 0942ffb235c7e869fc481a6cd3885e444a7ba045
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Wed Dec 23 01:48:52 2015 -0500

    Updated to 2.1 and created Docker build info
    
    Updated version to 2.1.
    Created Docker build info to setup and configure Docker image using Ansible.
    
    Signed-off-by: Larry Smith Jr <mrlesmithjr@gmail.com>

commit dcb472c4383f53b8d0e33b803b6ebd8710430a2c
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Mon Nov 2 12:14:45 2015 -0500

    reformatted tasks and updated vars in preparation of 2.x

commit 1af2093a9eaf40f2900fa5d5142452fdbbb14c3b
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Fri Oct 30 15:24:01 2015 -0400

    updated to remove metrics filter

commit 5eab5f043590ae65c50ea554fc4b94c9fa6c5d84
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Fri Oct 23 00:43:27 2015 -0400

    fixed placement of always_run

commit 4694d03c4cba24d2b61417ca178d7746b758647d
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Fri Oct 23 00:36:28 2015 -0400

    added always_run to allow checks and diffs to run successfully

commit 9aef7870876e1ed19659a00d85dd628bb2b45684
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Thu Oct 22 13:50:37 2015 -0400

    added slack output plugin

commit 988eda800585a160d2a38183fbc98eceb349a793
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Mon Oct 19 22:35:16 2015 -0400

    fixed template host field

commit fb6ec36c620b04e423afd11e5d0750d3fcb28f47
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Mon Oct 19 22:02:55 2015 -0400

    added metric counters for processing

commit 8301cd78467305c421ac936379bca892b19f00bb
Author: Larry Smith Jr <mrlesmithjr@gmail.com>
Date:   Mon Sep 28 11:29:03 2015 -0400

    added Jira output plugin

commit f7f67507c65a9ce56c781c2d168a974dd334f93c
Author: Larry Smith Jr <larry.e.smith.jr@gmail.com>
Date:   Sun Aug 2 16:48:11 2015 -0400

    added check for installed plugins

commit fd384e105fdf6d58a12bfa3b2b6b5b8321943852
Author: Larry Smith Jr <larry.e.smith.jr@gmail.com>
Date:   Wed Jul 29 19:25:10 2015 -0400

    fixing centos tasks

commit 3ef7b3139534f90a5aa0c0d466e074243a2f0577
Author: Larry Smith Jr <larry.e.smith.jr@gmail.com>
Date:   Wed Jul 29 19:17:12 2015 -0400

    fixing missing vars and cleaning up

commit c9478302803461ad8d2e4d45a724f3e23eabf404
Author: Larry Smith Jr <larry.e.smith.jr@gmail.com>
Date:   Wed Jul 29 19:06:20 2015 -0400

    first commit

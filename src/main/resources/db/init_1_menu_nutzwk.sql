
/* updateSysMenu1 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('8ae0e5decd8c47ce8f885626e4636789', '', '0004', '淘宝管理', NULL, 'menu', '', '', '', '1', '0', 'taobao', NULL, '57', '1', 'cd4618704b5f4e4784295d10395ad0cb', '1520503156', '0');
/* updateSysMenu2 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('1e4415c59d79485da4d576fb0db6da3a', '8ae0e5decd8c47ce8f885626e4636789', '00040001', '淘宝管理', NULL, 'menu', '', '', '', '1', '0', 'taobao.number', NULL, '58', '1', 'cd4618704b5f4e4784295d10395ad0cb', '1520503169', '0');
/* updateSysMenu3 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('066c308370204a2c9fddf4a77618551a', '1e4415c59d79485da4d576fb0db6da3a', '000400010001', '账号管理', NULL, 'menu', '/platform/losys/taobao', '', '', '1', '0', 'taobao.number.account', NULL, '59', '0', 'cd4618704b5f4e4784295d10395ad0cb', '1520503211', '0');

/* updateSysMenu4 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('925a7a4a99584f3d8eda3f54634c0724', '', '0005', '工厂管理', NULL, 'menu', '', '', '', '1', '0', 'factory', NULL, '60', '1', '0ae59b2184ac48dc8780936f47aeb5b8', '1520579637', '0');
/* updateSysMenu5 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('f7776e48db9443b5935d276ac30d84a7', '925a7a4a99584f3d8eda3f54634c0724', '00050001', '工厂管理', NULL, 'menu', '', '', '', '1', '0', 'factory.company', NULL, '61', '1', '0ae59b2184ac48dc8780936f47aeb5b8', '1520579696', '0');
/* updateSysMenu6 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('0dc24576cc4145b3bb3271334fe07409', 'f7776e48db9443b5935d276ac30d84a7', '000500010001', '账号管理', NULL, 'menu', '/platform/losys/factory', '', '', '1', '0', 'factory.company.number', NULL, '62', '0', '0ae59b2184ac48dc8780936f47aeb5b8', '1520579877', '0');

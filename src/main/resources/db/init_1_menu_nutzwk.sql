
/* updateSysMenu1 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('8ae0e5decd8c47ce8f885626e4636789', '', '0004', '淘宝管理', NULL, 'menu', '', '', '', '1', '0', 'taobao', NULL, '57', '1', 'cd4618704b5f4e4784295d10395ad0cb', '1520503156', '0');
/* updateSysMenu2 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('1e4415c59d79485da4d576fb0db6da3a', '8ae0e5decd8c47ce8f885626e4636789', '00040001', '淘宝管理', NULL, 'menu', '', '', '', '1', '0', 'taobao.number', NULL, '58', '1', 'cd4618704b5f4e4784295d10395ad0cb', '1520503169', '0');
/* updateSysMenu3 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('066c308370204a2c9fddf4a77618551a', '1e4415c59d79485da4d576fb0db6da3a', '000400010001', '账号管理', NULL, 'menu', '/platform/losys/taobao', '', '', '1', '0', 'taobao.number.account', NULL, '59', '0', 'cd4618704b5f4e4784295d10395ad0cb', '1520503211', '0');
/* updateSysMenu4 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('7fd50fec15084290b300d9aebfdc4c25', '1e4415c59d79485da4d576fb0db6da3a', '000400010002', '订单管理', NULL, 'menu', '/platform/losys/taobao/order', '', '', '1', '0', 'taobao.number.order', NULL, '63', '0', 'e09744c4a2fd45e1a04db0efd958f748', '1520926697', '0');

/* updateSysMenu5 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('925a7a4a99584f3d8eda3f54634c0724', '', '0005', '工厂管理', NULL, 'menu', '', '', '', '1', '0', 'factory', NULL, '60', '1', '0ae59b2184ac48dc8780936f47aeb5b8', '1520579637', '0');
/* updateSysMenu6 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('f7776e48db9443b5935d276ac30d84a7', '925a7a4a99584f3d8eda3f54634c0724', '00050001', '工厂管理', NULL, 'menu', '', '', '', '1', '0', 'factory.company', NULL, '61', '1', '0ae59b2184ac48dc8780936f47aeb5b8', '1520579696', '0');
/* updateSysMenu7 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('0dc24576cc4145b3bb3271334fe07409', 'f7776e48db9443b5935d276ac30d84a7', '000500010001', '账号管理', NULL, 'menu', '/platform/losys/factory', '', '', '1', '0', 'factory.company.number', NULL, '62', '0', '0ae59b2184ac48dc8780936f47aeb5b8', '1520579877', '0');
/* updateSysMenu8 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('ee4ca73f94f44606a1aa78b51f83d9cb', 'f7776e48db9443b5935d276ac30d84a7', '000500010002', '订单管理', NULL, 'menu', '/platform/losys/factory/order', '', '', '1', '0', 'factory.company.order', NULL, '64', '0', 'e9356d3fbb5447f6a40c40e0aa9bd5dd', '1521185587', '0');
/* updateSysMenu9 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('9bb9346624a54895913e98b1801a5215', '2749541b1a5b4141984d03254c954b4e', '0007000100010003', '修改区域', NULL, 'data', '', '', '', '0', '0', 'area.manage.edit', NULL, '74', '0', 'e04edf911d6a4c3982c58d32ce764bf0', '1521196538', '0');
/* updateSysMenu10 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('4feeabfad8f24bceb2df1e0db1a1ae14', '2749541b1a5b4141984d03254c954b4e', '0007000100010002', '添加区域', NULL, 'data', '', '', '', '0', '0', 'area.manage.add', NULL, '73', '0', 'e04edf911d6a4c3982c58d32ce764bf0', '1521196515', '0');
/* updateSysMenu11 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('d80cf7659b564321b0854ad59c9113d4', '2749541b1a5b4141984d03254c954b4e', '0007000100010001', '删除区域', NULL, 'data', '', '', '', '0', '0', 'area.manage.delete', NULL, '72', '0', 'e04edf911d6a4c3982c58d32ce764bf0', '1521192816', '0');
/* updateSysMenu12 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('2749541b1a5b4141984d03254c954b4e', 'c17f9c44b79a49e6b1e6a5d60bcfbccf', '000700010001', '区域管理', NULL, 'menu', '/platform/losys/area', '', '', '1', '0', 'area.manage.index', NULL, '71', '0', 'e04edf911d6a4c3982c58d32ce764bf0', '1521167136', '0');
/* updateSysMenu13 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('c17f9c44b79a49e6b1e6a5d60bcfbccf', '26ec10a94dae4b698e3b89155723868b', '00070001', '区域管理', NULL, 'menu', '', '', '', '1', '0', 'area.manage', NULL, '70', '1', 'e04edf911d6a4c3982c58d32ce764bf0', '1521167081', '0');
/* updateSysMenu14 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('26ec10a94dae4b698e3b89155723868b', '', '0007', '区域管理', NULL, 'menu', '', '', '', '1', '0', 'area', NULL, '69', '1', 'e04edf911d6a4c3982c58d32ce764bf0', '1521167028', '0');
/* updateSysMenu15 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('5a3210ef7ff04a60bb142ea57190bfec', 'c37a236d660f46a7817ca4c485831aca', '0006000100010003', '修改物流公司', NULL, 'menu', '', '', '', '1', '0', 'logistics.manage.edit', NULL, '68', '0', 'e04edf911d6a4c3982c58d32ce764bf0', '1521080288', '0');
/* updateSysMenu16 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('4007179ba8234058a10de9886d217cb9', 'c37a236d660f46a7817ca4c485831aca', '0006000100010002', '删除物流公司', NULL, 'data', '', '', '', '0', '0', 'logistics.manage.delete', NULL, '67', '0', 'e04edf911d6a4c3982c58d32ce764bf0', '1521080269', '0');
/* updateSysMenu17 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('a1c12d6d3c894381b19573f837693105', 'c37a236d660f46a7817ca4c485831aca', '0006000100010001', '添加物流公司', NULL, 'data', '', '', '', '0', '0', 'logistics.manage.add', NULL, '66', '0', 'e04edf911d6a4c3982c58d32ce764bf0', '1521080244', '0');
/* updateSysMenu18 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('c37a236d660f46a7817ca4c485831aca', '5d165a6aa73041a399533ef003eeaaae', '000600010001', '物流公司管理', NULL, 'menu', '/platform/losys/logistics', '', '', '1', '0', 'logistics.manage.index', NULL, '65', '1', 'e04edf911d6a4c3982c58d32ce764bf0', '1521017383', '0');
/* updateSysMenu19 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('5d165a6aa73041a399533ef003eeaaae', '6652053f97424a18957e2109522d8d8e', '00060001', '物流管理', NULL, 'menu', '', '', '', '1', '0', 'logistics.manage', NULL, '64', '1', 'e04edf911d6a4c3982c58d32ce764bf0', '1521017160', '0');
/* updateSysMenu20 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('6652053f97424a18957e2109522d8d8e', '', '0006', '物流管理', NULL, 'menu', '', '', '', '1', '0', 'logistics', NULL, '63', '1', 'e04edf911d6a4c3982c58d32ce764bf0', '1521015329', '0');
/* updateSysMenu21 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('3076051557cf4413bd4c2795ae864a7d', '5d165a6aa73041a399533ef003eeaaae', '000600010002', '物流订单管理', NULL, 'menu', '/platform/losys/logistics/order', '', '', '1', '0', 'taobao.logistics.order', NULL, '95', '0', 'ccb77b82f75b44a9847aeff7ac38a0b5', '1522379791', '0');
/* updateSysMenu22 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('09bcf60e897041a98c238abb6b369850', '', '0008', '价格管理', NULL, 'menu', '', '', '', '1', '0', 'groupPricesetting', NULL, '75', '1', 'e04edf911d6a4c3982c58d32ce764bf0', '1521515918', '0');
/* updateSysMenu23 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('9895d015abf449eeb92783dcb501d350', '09bcf60e897041a98c238abb6b369850', '00080001', '价格管理', NULL, 'menu', '', '', '', '1', '0', 'groupPricesetting.manage', NULL, '76', '1', '5d8e6c54f2a34e0a82c6fcfc53cd3c6c', '1522379078', '0');
/* updateSysMenu24 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('ded1975549de45d7914e27219e777f99', '9895d015abf449eeb92783dcb501d350', '000800010001', '价格管理', NULL, 'menu', '/platform/losys/GroupPricesetting', '', '', '1', '0', 'groupPricesetting.manage.index', NULL, '77', '0', '5d8e6c54f2a34e0a82c6fcfc53cd3c6c', '1522379089', '0');
/* updateSysMenu25 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('6e5242bf87d14c14a91d10ee48daa8fe', 'ded1975549de45d7914e27219e777f99', '0008000100010001', '添加价格', NULL, 'data', '', '', '', '0', '0', 'groupPricesetting.manage.add', NULL, '78', '0', '5d8e6c54f2a34e0a82c6fcfc53cd3c6c', '1522379106', '0');
/* updateSysMenu26 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('b79cd0d745804547ae9b4f9553229d9e', 'ded1975549de45d7914e27219e777f99', '0008000100010002', '修改价格', NULL, 'data', '', '', '', '0', '0', 'groupPricesetting.manage.edit', NULL, '79', '0', '5d8e6c54f2a34e0a82c6fcfc53cd3c6c', '1522379127', '0');
/* updateSysMenu27 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('4558fc50fced42729e0e8432b16f7c40', 'ded1975549de45d7914e27219e777f99', '0008000100010003', '删除价格', NULL, 'data', '', '', '', '0', '0', 'groupPricesetting.manage.delete', NULL, '80', '0', '5d8e6c54f2a34e0a82c6fcfc53cd3c6c', '1522379136', '0');
/* updateSysMenu28 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('4fe20a4bdf6542979fe8eb11e2c67f40', '09bcf60e897041a98c238abb6b369850', '00080002', '价格分组管理', NULL, 'menu', '', '', '', '1', '0', 'logisticsGroup', NULL, '81', '1', '2fe0e8025f2f45d7bb373786c305a0d5', '1521617089', '0');
/* updateSysMenu29 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('9eb55277fea945cea9a2f731cdce0f43', '4fe20a4bdf6542979fe8eb11e2c67f40', '000800020004', '价格分组管理', NULL, 'menu', '/platform/losys/logisticsGroup', '', '', '1', '0', 'logisticsGroup.manage', NULL, '85', '1', '2fe0e8025f2f45d7bb373786c305a0d5', '1521617073', '0');
/* updateSysMenu30 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('8516193b41b3400cbee3b3c4065ba20f', '9eb55277fea945cea9a2f731cdce0f43', '0008000200040001', '删除价格分组', NULL, 'data', '', '', '', '0', '0', 'logisticsGroup.manage.delete', NULL, '86', '0', '2fe0e8025f2f45d7bb373786c305a0d5', '1521617143', '0');
/* updateSysMenu31 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('f381df5a615447eb83dd6a861a2e52e2', '9eb55277fea945cea9a2f731cdce0f43', '0008000200040002', '添加价格分组', NULL, 'data', '', '', '', '0', '0', 'logisticsGroup.manage.add', NULL, '87', '0', '2fe0e8025f2f45d7bb373786c305a0d5', '1521617158', '0');
/* updateSysMenu32 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('83f09280d0764ae79c4dd772f8c8c410', '9eb55277fea945cea9a2f731cdce0f43', '0008000200040003', '修改价格分组', NULL, 'data', '', '', '', '1', '0', 'logisticsGroup.manage.edit', NULL, '88', '0', '2fe0e8025f2f45d7bb373786c305a0d5', '1521617192', '0');
/* updateSysMenu33 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('fba0a4ba1ed24376ad95b17fcddf8ba8', 'a0b509d67bdf4f6a9dd8cd81029eacbe', '000900010001', '区域价格管理', NULL, 'menu', '/platform/losys/areaPrice', '', '', '1', '0', 'areaPrice.manage.index', NULL, '91', '0', 'b4e8e8f08eec4a0e93aec681f9baf4ac', '1521796056', '0');
/* updateSysMenu34 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('a0b509d67bdf4f6a9dd8cd81029eacbe', 'ba031174cea54c109eabce95717d65cc', '00090001', '区域价格管理', NULL, 'menu', '', '', '', '1', '0', 'areaPrice.manage', NULL, '90', '1', 'b4e8e8f08eec4a0e93aec681f9baf4ac', '1521795977', '0');
/* updateSysMenu35 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('ba031174cea54c109eabce95717d65cc', '', '0009', '区域价格管理', NULL, 'menu', '', '', '', '1', '0', 'areaPrice', NULL, '89', '1', 'b4e8e8f08eec4a0e93aec681f9baf4ac', '1521795938', '0');
/* updateSysMenu36 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('3cae9d26980840da9ba5e3ec0e56672e', '', '0010', '保价管理', NULL, 'menu', '', '', '', '1', '0', 'support', NULL, '81', '1', '335eb54dc9a540178e6ff9119143f36e', '1522029321', '0');
/* updateSysMenu37 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('f38ecf4dcc744d81b890667947d04548', '3cae9d26980840da9ba5e3ec0e56672e', '00100001', '保价管理', NULL, 'menu', '', '', '', '1', '0', 'support.price', NULL, '82', '1', '335eb54dc9a540178e6ff9119143f36e', '1522029420', '0');
/* updateSysMenu38 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('e0982c79b0654e0c8ba15f5cb346b791', 'f38ecf4dcc744d81b890667947d04548', '001000010001', '保价管理', NULL, 'menu', '/platform/losys/insurance', '', '', '1', '0', 'support.price.list', NULL, '83', '0', '335eb54dc9a540178e6ff9119143f36e', '1522029584', '0');
/* updateSysMenu39 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('296988a573cb4a21b618563fc0c96028', 'e0982c79b0654e0c8ba15f5cb346b791', '0009000100010001', '删除保价', NULL, 'data', '', '', '', '0', '0', 'support.price.delete', NULL, '84', '0', '335eb54dc9a540178e6ff9119143f36e', '1522031681', '0');
/* updateSysMenu40 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('eccaced8971f4699a5445dc42d5f4b50', 'e0982c79b0654e0c8ba15f5cb346b791', '0010000100010002', '添加保价', NULL, 'data', '', '', '', '0', '0', 'support.price.add', NULL, '85', '0', '335eb54dc9a540178e6ff9119143f36e', '1522031779', '0');
/* updateSysMenu41 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('f29e136612544b0ba23d69ded99cefa3', 'e0982c79b0654e0c8ba15f5cb346b791', '0010000100010003', '修改保价', NULL, 'data', '', '', '', '0', '0', 'support.price.edit', NULL, '86', '0', '335eb54dc9a540178e6ff9119143f36e', '1522031853', '0');
/* updateSysMenu42 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('e9801a2177ae408da466c5206fa11889', '', '0011', '运费查询 ', NULL, 'menu', '', '', '', '1', '0', 'freight', NULL, '92', '1', '3803af43a2a14c8b93bac2ab1153d5db', '1522118070', '0');
/* updateSysMenu43 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('db40fe0e4e694976ba55210694ac815c', 'e9801a2177ae408da466c5206fa11889', '00110001', '运费查询 ', NULL, 'menu', '', '', '', '1', '0', 'freight.coat', NULL, '93', '1', '3803af43a2a14c8b93bac2ab1153d5db', '1522118242', '0');
/* updateSysMenu44 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('5796842a631b410f807393ca10cdc43a', 'db40fe0e4e694976ba55210694ac815c', '001100010001', '运费查询', NULL, 'menu', '/platform/losys/freight', '', '', '1', '0', 'freight.coat.index', NULL, '94', '0', '3803af43a2a14c8b93bac2ab1153d5db', '1522118305', '0');
/* updateSysMenu45 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('3e4043dcaeaa462c868f7bcbcc2b662b', '6ab41eb314134512baeb13c7eb98729b', '001200010001', '超长管理', NULL, 'menu', '/platform/losys/overLength', '', '', '1', '0', 'overLength.manage.index', NULL, '94', '0', 'b4e8e8f08eec4a0e93aec681f9baf4ac', '1522116355', '0');
/* updateSysMenu46 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('6ab41eb314134512baeb13c7eb98729b', 'bf6cefc67f3e4c399a977ef43728c2e8', '00120001', '超长管理', NULL, 'menu', '', '', '', '1', '0', 'overLength.manage', NULL, '93', '1', 'b4e8e8f08eec4a0e93aec681f9baf4ac', '1522116316', '0');
/* updateSysMenu47 */
INSERT INTO `losys`.`sys_menu` (`id`, `parentId`, `path`, `name`, `aliasName`, `type`, `href`, `target`, `icon`, `isShow`, `disabled`, `permission`, `note`, `location`, `hasChildren`, `opBy`, `opAt`, `delFlag`) VALUES ('bf6cefc67f3e4c399a977ef43728c2e8', '', '0012', '超长管理', NULL, 'menu', '', '', '', '1', '0', 'overLength', NULL, '92', '1', 'b4e8e8f08eec4a0e93aec681f9baf4ac', '1522116279', '0');

/* updateSysMenu48*/
INSERT INTO `losys`.`lo_logistics` (`id`, `name`, `size`, `compare`, `formula`, `value`, `quantity`, `calType`, `opBy`, `opAt`, `delFlag`) VALUES ('4795f660515f465ab50f285cf525e121', '顺丰', '12000', '*0.75', 'last*width*height/size*pricecompare', '160', '1', '2', NULL, '1522401326', '0');
/* updateSysMenu49*/
INSERT INTO `losys`.`lo_logistics` (`id`, `name`, `size`, `compare`, `formula`, `value`, `quantity`, `calType`, `opBy`, `opAt`, `delFlag`) VALUES ('d8af6c76f11147cd9cde0f23de28d3db', '跨越', '10000', '*1', 'last*width*height/size*pricecompare', '150', '2', '2', 'ccb77b82f75b44a9847aeff7ac38a0b5', '1522401420', '0');
/* updateSysMenu50*/
INSERT INTO `losys`.`lo_insurance_pricesetting` (`id`, `insuranceId`, `operator`, `insurance`, `type`, `value`, `opBy`, `opAt`, `delFlag`) VALUES ('35d6a7aec1064902a60a4dff2cec5b3a', 'b442eadd951247c78e6dda2599ec197b', '<=', '1000', '1', '2', NULL, '1987689253', NULL);
/* updateSysMenu51*/
INSERT INTO `losys`.`lo_insurance_pricesetting` (`id`, `insuranceId`, `operator`, `insurance`, `type`, `value`, `opBy`, `opAt`, `delFlag`) VALUES ('43d0872a30fb44bf87a7ad437c51f964', 'b827fc9936a943a38f10e1ecea612772', '<=', '500', '1', '1', '9105e848fbd2481d907bc9747f0f1fe9', '1522810544', '0');
/* updateSysMenu52*/
INSERT INTO `losys`.`lo_insurance_pricesetting` (`id`, `insuranceId`, `operator`, `insurance`, `type`, `value`, `opBy`, `opAt`, `delFlag`) VALUES ('7b852f03c4fc4696aa99cc6bda9fed84', '86ef9568d30540538f807d1d55b16b67', '>', '1000', '2', '0.005', '9105e848fbd2481d907bc9747f0f1fe9', '1522810751', '0');
/* updateSysMenu53*/
INSERT INTO `losys`.`lo_insurance_pricesetting` (`id`, `insuranceId`, `operator`, `insurance`, `type`, `value`, `opBy`, `opAt`, `delFlag`) VALUES ('1da6691b50e84394b419bc2f06335e58', '6a801a1e69be414d8738912ed1927c15', '<=', '1000', '1', '6', '9105e848fbd2481d907bc9747f0f1fe9', '1522811044', '0');
/* updateSysMenu54*/
INSERT INTO `losys`.`lo_insurance_pricesetting` (`id`, `insuranceId`, `operator`, `insurance`, `type`, `value`, `opBy`, `opAt`, `delFlag`) VALUES ('0d47ea7ec077469bad1281de35320745', '529e417d74af4d91ac364adc570b35b3', '>', '1000', '2', '0.006', '9105e848fbd2481d907bc9747f0f1fe9', '1522811749', '0');
/* updateSysMenu63*/
INSERT INTO `losys`.`lo_insurance_pricesetting` (`id`, `insuranceId`, `operator`, `insurance`, `type`, `value`, `opBy`, `opAt`, `delFlag`) VALUES ('67dae4b3cc75472389eeda6469891a06', 'f84edfea1b6b4118973b700b220ca5ba', '>', '500', '1', '2', '5f29c01fa57e4485adda17d9be54b093', '1523157569', '0');
/* updateSysMenu55*/
INSERT INTO `losys`.`lo_insurance` (`id`, `logisticsId`, `opBy`, `opAt`, `delFlag`) VALUES ('b442eadd951247c78e6dda2599ec197b', '4795f660515f465ab50f285cf525e121', 'ccb77b82f75b44a9847aeff7ac38a0b5', '1522406094', '0');
/* updateSysMenu56*/
INSERT INTO `losys`.`lo_insurance` (`id`, `logisticsId`, `opBy`, `opAt`, `delFlag`) VALUES ('b827fc9936a943a38f10e1ecea612772', '4795f660515f465ab50f285cf525e121', '9105e848fbd2481d907bc9747f0f1fe9', '1522810544', '0');
/* updateSysMenu57*/
INSERT INTO `losys`.`lo_insurance` (`id`, `logisticsId`, `opBy`, `opAt`, `delFlag`) VALUES ('86ef9568d30540538f807d1d55b16b67', '4795f660515f465ab50f285cf525e121', '9105e848fbd2481d907bc9747f0f1fe9', '1522810751', '0');
/* updateSysMenu58*/
INSERT INTO `losys`.`lo_insurance` (`id`, `logisticsId`, `opBy`, `opAt`, `delFlag`) VALUES ('6a801a1e69be414d8738912ed1927c15', 'd8af6c76f11147cd9cde0f23de28d3db', '9105e848fbd2481d907bc9747f0f1fe9', '1522811044', '0');
/* updateSysMenu59*/
INSERT INTO `losys`.`lo_insurance` (`id`, `logisticsId`, `opBy`, `opAt`, `delFlag`) VALUES ('529e417d74af4d91ac364adc570b35b3', 'd8af6c76f11147cd9cde0f23de28d3db', '9105e848fbd2481d907bc9747f0f1fe9', '1522811749', '0');
/* updateSysMenu64*/
INSERT INTO `losys`.`lo_insurance` (`id`, `logisticsId`, `opBy`, `opAt`, `delFlag`) VALUES ('f84edfea1b6b4118973b700b220ca5ba', '4795f660515f465ab50f285cf525e121', '5f29c01fa57e4485adda17d9be54b093', '1523157569', '0');

/* updateSysMenu60*/
INSERT INTO `losys`.`lo_overlength_pricesetting` (`id`, `logisticsId`, `type`, `operator`, `calKey`, `calValue`, `opBy`, `opAt`, `delFlag`) VALUES ('8a967359efcb4087a43f2b63616353a6', '4795f660515f465ab50f285cf525e121', '2', '>', '30', '100', '52a3474a0f5e49068dfb5006cbce4b01', '1522651397', '0');
/* updateSysMenu61*/
INSERT INTO `losys`.`lo_overlength_pricesetting` (`id`, `logisticsId`, `type`, `operator`, `calKey`, `calValue`, `opBy`, `opAt`, `delFlag`) VALUES ('bf6bf32bafba4a74af4fd73028e91aa2', '4795f660515f465ab50f285cf525e121', '1', '<=', '30', '20', '52a3474a0f5e49068dfb5006cbce4b01', '1522651416', '0');
/* updateSysMenu62*/
INSERT INTO `losys`.`lo_overlength_pricesetting` (`id`, `logisticsId`, `type`, `operator`, `calKey`, `calValue`, `opBy`, `opAt`, `delFlag`) VALUES ('f861cf0e53ec4cd696f77fb66ee3ce9e', 'd8af6c76f11147cd9cde0f23de28d3db', '1', '>', '0', '50', '52a3474a0f5e49068dfb5006cbce4b01', '1522651187', '0');


/* insertTeamtalkMenu9 */ 
INSERT INTO sys_role_menu(roleId,menuId) SELECT (select id from sys_role where name='淘宝方') as roleid,id as menuid FROM sys_menu WHERE 
FIND_IN_SET(id, (select GROUP_CONCAT(id) as id from sys_menu where path like ('0004') or path like ('000400010002%') or path like ('00040001')))
/* insertTeamtalkMenu10 */ 
INSERT INTO sys_role_menu(roleId,menuId) SELECT (select id from sys_role where name='工厂方') as roleid,id as menuid FROM sys_menu WHERE 
FIND_IN_SET(id, (select GROUP_CONCAT(id) as id from sys_menu where path like ('0005') or path like ('000500010002%') or path like ('00050001')))
/* insertTeamtalkMenu11 */ 
INSERT INTO sys_role_menu(roleId,menuId) SELECT (select id from sys_role where name='淘宝方') as roleid,id as menuid FROM sys_menu WHERE 
FIND_IN_SET(id, (select GROUP_CONCAT(id) as id from sys_menu where path like ('0011') or path like ('001100010001%') or path like ('00110001')))
/* insertTeamtalkMenu12 */ 
INSERT INTO sys_role_menu(roleId,menuId) SELECT (select id from sys_role where name='工厂方') as roleid,id as menuid FROM sys_menu WHERE 
FIND_IN_SET(id, (select GROUP_CONCAT(id) as id from sys_menu where path like ('0011') or path like ('001100010001%') or path like ('00110001')))
/* insertTeamtalkMenu13 */ 
INSERT INTO sys_role_menu(roleId,menuId) SELECT (select id from sys_role where name='物流方') as roleid,id as menuid FROM sys_menu WHERE 
FIND_IN_SET(id, (select GROUP_CONCAT(id) as id from sys_menu where path like ('0006') or path like ('000600010002%') or path like ('00060001')))
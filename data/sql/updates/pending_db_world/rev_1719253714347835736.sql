--
DELETE FROM `spell_script_names` WHERE `spell_id` = 32865;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES(32865, 'spell_warl_seed_of_corruption');
DELETE FROM `spell_script_names` WHERE `spell_id` = -27243;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES(-27243, 'spell_warl_seed_of_corruption_aura');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (32863, 38252, 44141, 70388);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(32863, 'spell_warl_seed_of_corruption_generic_aura'),
(38252, 'spell_warl_seed_of_corruption_generic_aura'),
(44141, 'spell_warl_seed_of_corruption_generic_aura'),
(70388, 'spell_warl_seed_of_corruption_generic_aura');
-- spell_zereketh_seed_of_corruption to generic
UPDATE `spell_script_names` SET `ScriptName`='spell_warl_seed_of_corruption_generic_aura' WHERE `spell_id` IN (36123, 39367);

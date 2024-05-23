--
-- Remove encounter auras minus glow aura from Keepers, add glow aura to Gossip Keepers
UPDATE `creature_template_addon` SET `auras` = '62647' WHERE `entry` IN (33410,33411,33412,33413,33213,33241,33242,33244);

DELETE FROM `spell_script_names` WHERE `spell_id` = 64170;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (64170, 'spell_keeper_freya_summon_sanity_well');

DELETE FROM `spell_script_names` WHERE `spell_id` IN (62650,62670,62671,62702);
DELETE FROM `spell_script_names` WHERE `spell_id` = 64174 AND `ScriptName` = 'spell_gen_area_aura_select_players';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(62650, 'spell_gen_area_aura_select_players_and_caster'),
(62670, 'spell_gen_area_aura_select_players_and_caster'),
(62671, 'spell_gen_area_aura_select_players_and_caster'),
(62702, 'spell_gen_area_aura_select_players_and_caster'),
(64174, 'spell_gen_area_aura_select_players');

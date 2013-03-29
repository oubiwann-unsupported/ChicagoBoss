-module(boss_compiler_adapter_lfe).
-compile(export_all).

file_extensions() -> ["lfe"].

controller_module(AppName, Controller) -> lists:concat([AppName, "_", Controller, "_controller"]).

module_name_for_file(AppName, File) -> filename:basename(File, ".lfe").

compile_controller(File, Options) ->
    boss_controller_compiler:compile(File, Options).

compile(File, Options) ->
    %boss_compiler:compile(File, Options).
    lfe_comp:file(File, Options).
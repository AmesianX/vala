doclet_devhelp_sources = [
	'doclet.vala',
]

shared_module(
	'doclet',
	doclet_devhelp_sources,
	dependencies: [gobject_dep, libvaladoc_dep],
	install: true,
	install_dir: join_paths(get_option('libdir'), 'valadoc', 'doclets', 'devhelp'),
	c_args: ['-DPACKAGE_ICONDIR="@0@"'.format(join_paths(get_option('prefix'), get_option('datadir'), 'valadoc', 'icons'))],
)

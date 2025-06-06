runroot rpmbuild -ba --quiet \
	--define "_rpmformat ${ver}" \
	--define "_rpmdir %{_topdir}/RPMS/${ver}" \
	--define "optflags -O2 -g" \
	--define "_target_platform noarch-linux" \
	--define "_binary_payload w.ufdio" \
	--define "use_source_date_epoch_as_buildtime 1" \
	--define "source_date_epoch_from_changelog 1" \
	--define "build_mtime_policy clamp_to_source_date_epoch" \
	--define "_use_weak_usergroup_deps 0" \
	--define "_openpgp_autosign_id %{nil}" \
	/data/SPECS/attrtest.spec


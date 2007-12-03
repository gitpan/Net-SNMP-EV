use ExtUtils::MakeMaker;

my $mm = MM->new({
    dist         => {
       PREOP	=> 'pod2text EV.pm | tee README >$(DISTVNAME)/README; chmod -R u=rwX,go=rX . ;',
       COMPRESS	=> 'gzip -9v',
       SUFFIX	=> '.gz',
	            },
    NAME         => "Net::SNMP::EV",
    VERSION_FROM => "EV.pm",
    PREREQ_FATAL => 1,
    PREREQ_PM    => {
       Net::SNMP           => 5,
       EV                  => 1.3,
       ExtUtils::PkgConfig => 0,
    },
});

$mm->flush;


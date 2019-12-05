{
  ansi = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "069d7j0pg6z3y4kkgvfglgd5ykv7ap5pfb7h0s1mg8v8lg31xjbc";
      type = "gem";
    };
    version = "1.3.0";
  };
  builder = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0qibi5s67lpdv1wgcj66wcymcr04q6j4mzws6a479n0mlrmh5wr1";
      type = "gem";
    };
    version = "3.2.3";
  };
  CFPropertyList = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0hadm41xr1fq3qp74jd9l5q8l0j9083rgklgzsilllwaav7qrrid";
      type = "gem";
    };
    version = "2.3.6";
  };
  childprocess = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1ic028k8xgm2dds9mqnvwwx3ibaz32j8455zxr9f4bcnviyahya5";
      type = "gem";
    };
    version = "3.0.0";
  };
  concurrent-ruby = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1x07r23s7836cpp5z9yrlbpljcxpax14yw4fy4bnp6crhr6x24an";
      type = "gem";
    };
    version = "1.1.5";
  };
  diff-lcs = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "18w22bjz424gzafv6nzv98h0aqkwz3d9xhm7cbr1wfbyas8zayza";
      type = "gem";
    };
    version = "1.3";
  };
  domain_name = {
    dependencies = ["unf"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0lcqjsmixjp52bnlgzh4lg9ppsk52x9hpwdjd53k8jnbah2602h0";
      type = "gem";
    };
    version = "0.5.20190701";
  };
  dry-inflector = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "17mkdwglqsd9fg272y3zms7rixjgkb1km1xcb88ir5lxvk1jkky7";
      type = "gem";
    };
    version = "0.2.0";
  };
  excon = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1gb03h10sdw752dsqmn7mm1gqzm1i5bnwvd3cbpl5kdkr2bm0mp3";
      type = "gem";
    };
    version = "0.70.0";
  };
  fission = {
    dependencies = ["CFPropertyList"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "09pmp1j1rr8r3pcmbn2na2ls7s1j9ijbxj99xi3a8r6v5xhjdjzh";
      type = "gem";
    };
    version = "0.5.0";
  };
  fog = {
    dependencies = ["fog-aliyun" "fog-atmos" "fog-aws" "fog-brightbox" "fog-cloudatcost" "fog-core" "fog-digitalocean" "fog-dnsimple" "fog-dynect" "fog-ecloud" "fog-google" "fog-internet-archive" "fog-joyent" "fog-json" "fog-local" "fog-openstack" "fog-ovirt" "fog-powerdns" "fog-profitbricks" "fog-rackspace" "fog-radosgw" "fog-riakcs" "fog-sakuracloud" "fog-serverlove" "fog-softlayer" "fog-storm_on_demand" "fog-terremark" "fog-vmfusion" "fog-voxel" "fog-vsphere" "fog-xenserver" "fog-xml" "ipaddress" "json"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0bzmxqppksdirx5fp9b2sr80kkb8w78zzkfbm0pnql7pbh21rvgl";
      type = "gem";
    };
    version = "1.42.1";
  };
  fog-aliyun = {
    dependencies = ["fog-core" "fog-json" "ipaddress" "xml-simple"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1sxw5rvxh72j4pqhap9iv0dnfydzkbcpbsgcdkpinkvfmzb98b4x";
      type = "gem";
    };
    version = "0.3.5";
  };
  fog-atmos = {
    dependencies = ["fog-core" "fog-xml"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1aaxgnw9zy96gsh4h73kszypc32sx497s6bslvhfqh32q9d1y8c9";
      type = "gem";
    };
    version = "0.1.0";
  };
  fog-aws = {
    dependencies = ["fog-core" "fog-json" "fog-xml" "ipaddress"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "00skbbgvhqzq6gpgzmw0957n0wf1y3vjgrdyq3sib0ghpyfgmig3";
      type = "gem";
    };
    version = "2.0.1";
  };
  fog-brightbox = {
    dependencies = ["dry-inflector" "fog-core" "fog-json" "mime-types"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0z0azs8119v4v3xrds822pyv7137cy8kgsmbjmf96l717qzr4b4p";
      type = "gem";
    };
    version = "0.16.1";
  };
  fog-cloudatcost = {
    dependencies = ["fog-core" "fog-json" "fog-xml" "ipaddress"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1320ax5x8gxdnaxkgzhmy751nip771ax7nyljfgqblw6l4m0gigy";
      type = "gem";
    };
    version = "0.1.2";
  };
  fog-core = {
    dependencies = ["builder" "excon" "formatador"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "02449kh2x3zj9xxszm02vy8zpbsrykvjrg5gj3kqcy2yizy2bhp3";
      type = "gem";
    };
    version = "1.45.0";
  };
  fog-digitalocean = {
    dependencies = ["fog-core" "fog-json" "fog-xml" "ipaddress"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "03wbwp6fcl9ic38w99wv4iab96zzccl2ykmddcp6jvlwyp3x88d9";
      type = "gem";
    };
    version = "0.4.0";
  };
  fog-dnsimple = {
    dependencies = ["fog-core" "fog-json"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0vkx74hgwaymgiw1swqcf2ik65jiznxhf3z50434dgvvn5zk65sw";
      type = "gem";
    };
    version = "1.0.0";
  };
  fog-dynect = {
    dependencies = ["fog-core" "fog-json" "fog-xml"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0bmv12zjfbbcl33vg664bd6fp3q7rp0xi8n53i3707bi9zvf7d98";
      type = "gem";
    };
    version = "0.0.3";
  };
  fog-ecloud = {
    dependencies = ["fog-core" "fog-xml"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "18rb4qjad9xwwqvvpj8r2h0hi9svy71pm4d3fc28cdcnfarmdi06";
      type = "gem";
    };
    version = "0.3.0";
  };
  fog-google = {
    dependencies = ["fog-core" "fog-json" "fog-xml"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0z4vmswpqwph04c0wqzrscns1d1wdm8kbxx457bv156mawzrhfj3";
      type = "gem";
    };
    version = "0.1.0";
  };
  fog-internet-archive = {
    dependencies = ["fog-core" "fog-json" "fog-xml"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "19bfpph0j0pizgkkh63zbfaxxhbpcjxkaf4ddw3qy1plhwn40hnf";
      type = "gem";
    };
    version = "0.0.1";
  };
  fog-joyent = {
    dependencies = ["fog-core" "fog-json"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "01aihain51b253pvf0al329305vq5w6ndfp18a6hcdqiybzizvb0";
      type = "gem";
    };
    version = "0.0.1";
  };
  fog-json = {
    dependencies = ["fog-core" "multi_json"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1zj8llzc119zafbmfa4ai3z5s7c4vp9akfs0f9l2piyvcarmlkyx";
      type = "gem";
    };
    version = "1.2.0";
  };
  fog-local = {
    dependencies = ["fog-core"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0ba4lln35nryi6dcbz68vxg9ml6v8cc8s8c82f7syfd84bz76x21";
      type = "gem";
    };
    version = "0.6.0";
  };
  fog-openstack = {
    dependencies = ["fog-core" "fog-json" "ipaddress"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "11j18h61d3p0pcp9k5346lbj1lahab1dqybkrx9338932lmjn7ap";
      type = "gem";
    };
    version = "0.3.10";
  };
  fog-ovirt = {
    dependencies = ["fog-core" "fog-json" "fog-xml" "ovirt-engine-sdk" "rbovirt"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1sv4bxjninzzf5rfg3m8z99xlmqwcp9s3hrb8imhayi2cvqcmslr";
      type = "gem";
    };
    version = "1.2.3";
  };
  fog-powerdns = {
    dependencies = ["fog-core" "fog-json" "fog-xml"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0y531ag9qcbyb9mq7lxv77rvdz9bc1igaplgv850z4krg9f7pq7m";
      type = "gem";
    };
    version = "0.2.0";
  };
  fog-profitbricks = {
    dependencies = ["fog-core" "fog-json"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0879dfgdd9xby0l41a0rq0nzj9sj24l34knkjf48rdihvi7pbcl4";
      type = "gem";
    };
    version = "4.1.1";
  };
  fog-rackspace = {
    dependencies = ["fog-core" "fog-json" "fog-xml" "ipaddress"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "15hqiv60skk4c0gw8ihn4v8vdl0ipbw4yb8zbaq6nyyvg59wfcfm";
      type = "gem";
    };
    version = "0.1.6";
  };
  fog-radosgw = {
    dependencies = ["fog-core" "fog-json" "fog-xml"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0nslgv8yp5qkiryj3zsm91gs7s6i626igj61kwxjjwk2yv6swyr6";
      type = "gem";
    };
    version = "0.0.5";
  };
  fog-riakcs = {
    dependencies = ["fog-core" "fog-json" "fog-xml"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1nbxc4dky3agfwrmgm1aqmi59p6vnvfnfbhhg7xpg4c2cf41whxm";
      type = "gem";
    };
    version = "0.1.0";
  };
  fog-sakuracloud = {
    dependencies = ["fog-core" "fog-json"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "08krsn9sk5sx0aza812g31r169bd0zanb8pq5am3a64j6azarimd";
      type = "gem";
    };
    version = "1.7.5";
  };
  fog-serverlove = {
    dependencies = ["fog-core" "fog-json"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0hxgmwzygrw25rbsy05i6nzsyr0xl7xj5j2sjpkb9n9wli5sagci";
      type = "gem";
    };
    version = "0.1.2";
  };
  fog-softlayer = {
    dependencies = ["fog-core" "fog-json"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0f2crz9g3s6m6casr3bsdqc7lp55gd22iq99r63zi80fx37c1pzf";
      type = "gem";
    };
    version = "1.1.4";
  };
  fog-storm_on_demand = {
    dependencies = ["fog-core" "fog-json"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0fif1x8ci095b2yyilf65n7x6iyvn448azrsnmwsdkriy8vxxv3y";
      type = "gem";
    };
    version = "0.1.1";
  };
  fog-terremark = {
    dependencies = ["fog-core" "fog-xml"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "01lfkh9jppj0iknlklmwyb7ym3bfhkq58m3absb6rf5a5mcwi3lf";
      type = "gem";
    };
    version = "0.1.0";
  };
  fog-vmfusion = {
    dependencies = ["fission" "fog-core"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0g0l0k9ylxk1h9pzqr6h2ba98fl47lpp3j19lqv4jxw0iw1rqxn4";
      type = "gem";
    };
    version = "0.1.0";
  };
  fog-voxel = {
    dependencies = ["fog-core" "fog-xml"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "10skdnj59yf4jpvq769njjrvh2l0wzaa7liva8n78qq003mvmfgx";
      type = "gem";
    };
    version = "0.1.0";
  };
  fog-vsphere = {
    dependencies = ["fog-core" "rbvmomi"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1qhqj65ax9qfj3f0dn7b5clipx1sxm9v1ma4j9kp9v9q3lzp8qx6";
      type = "gem";
    };
    version = "3.2.1";
  };
  fog-xenserver = {
    dependencies = ["fog-core" "fog-xml" "xmlrpc"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0maqa0hchk5pyasn0yjbh3ackb071128s0102adzijhga0k6vvhz";
      type = "gem";
    };
    version = "1.0.0";
  };
  fog-xml = {
    dependencies = ["fog-core" "nokogiri"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "043lwdw2wsi6d55ifk0w3izi5l1d1h0alwyr3fixic7b94kc812n";
      type = "gem";
    };
    version = "0.1.3";
  };
  formatador = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1gc26phrwlmlqrmz4bagq1wd5b7g64avpx0ghxr9xdxcvmlii0l0";
      type = "gem";
    };
    version = "0.2.5";
  };
  grit = {
    dependencies = ["diff-lcs" "mime-types" "posix-spawn"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1j4iacf1pkskxsxhiwyghh82gwa4igyhcbzrsy1n2w4qs0jwcvhg";
      type = "gem";
    };
    version = "2.5.0";
  };
  highline = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0yclf57n2j3cw8144ania99h1zinf8q3f5zrhqa754j6gl95rp9d";
      type = "gem";
    };
    version = "2.0.3";
  };
  http-accept = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "09m1facypsdjynfwrcv19xcb1mqg8z6kk31g8r33pfxzh838c9n6";
      type = "gem";
    };
    version = "1.7.0";
  };
  http-cookie = {
    dependencies = ["domain_name"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "004cgs4xg5n6byjs7qld0xhsjq3n6ydfh897myr2mibvh6fjc49g";
      type = "gem";
    };
    version = "1.0.3";
  };
  i18n = {
    dependencies = ["concurrent-ruby"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0hmypvx9iyc0b4hski7aic2xzm09cg1c7q1qlpnk3k8s5acxzyhl";
      type = "gem";
    };
    version = "1.7.0";
  };
  ipaddress = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1x86s0s11w202j6ka40jbmywkrx8fhq8xiy8mwvnkhllj57hqr45";
      type = "gem";
    };
    version = "0.8.3";
  };
  json = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0sx97bm9by389rbzv8r1f43h06xcz8vwi3h5jv074gvparql7lcx";
      type = "gem";
    };
    version = "2.2.0";
  };
  mime-types = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0mhzsanmnzdshaba7gmsjwnv168r1yj8y0flzw88frw1cickrvw8";
      type = "gem";
    };
    version = "1.25.1";
  };
  mini_portile2 = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "15zplpfw3knqifj9bpf604rb3wc1vhq6363pd6lvhayng8wql5vy";
      type = "gem";
    };
    version = "2.4.0";
  };
  multi_json = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0xy54mjf7xg41l8qrg1bqri75agdqmxap9z466fjismc1rn2jwfr";
      type = "gem";
    };
    version = "1.14.1";
  };
  net-scp = {
    dependencies = ["net-ssh"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0nkf3my587f0izqw0dl3zl24c3lnrw9y5xrq9vb0lhgymmgcav9g";
      type = "gem";
    };
    version = "2.0.0";
  };
  net-ssh = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "101wd2px9lady54aqmkibvy4j62zk32w0rjz4vnigyg974fsga40";
      type = "gem";
    };
    version = "5.2.0";
  };
  netrc = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0gzfmcywp1da8nzfqsql2zqi648mfnx6qwkig3cv36n9m0yy676y";
      type = "gem";
    };
    version = "0.11.0";
  };
  nokogiri = {
    dependencies = ["mini_portile2"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0r0qpgf80h764k176yr63gqbs2z0xbsp8vlvs2a79d5r9vs83kln";
      type = "gem";
    };
    version = "1.10.7";
  };
  open4 = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1cgls3f9dlrpil846q0w7h66vsc33jqn84nql4gcqkk221rh7px1";
      type = "gem";
    };
    version = "1.3.4";
  };
  optimist = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "05jxrp3nbn5iilc1k7ir90mfnwc5abc9h78s5rpm3qafwqxvcj4j";
      type = "gem";
    };
    version = "3.0.0";
  };
  os = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1llv8w3g2jwggdxr5a5cjkrnbbfnvai3vxacxxc0fy84xmz3hymz";
      type = "gem";
    };
    version = "0.9.6";
  };
  ovirt-engine-sdk = {
    dependencies = ["json"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "09lb0a9y4q7946jaf53li1v4cb6ksfb5bq5wb15yn8ja6wf9n427";
      type = "gem";
    };
    version = "4.3.0";
  };
  Platform = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "07li6c0q12pd9g0y8zlh4716b8cxicq0wnms23w4icy5i3ap03lh";
      type = "gem";
    };
    version = "0.4.2";
  };
  popen4 = {
    dependencies = ["Platform" "open4"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "10y4ppqh6mylm1x3754brjfcjxhjznjx5ayw74414q5ph0662w1c";
      type = "gem";
    };
    version = "0.1.2";
  };
  posix-spawn = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1pmxmpins57qrbr31bs3bm7gidhaacmrp4md6i962gvpq4gyfcjw";
      type = "gem";
    };
    version = "0.3.13";
  };
  progressbar = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "17haw9c6c9q6imsn83pii32jnihpg76jgd09x7y4hjqq45n3qcdh";
      type = "gem";
    };
    version = "0.21.0";
  };
  rbovirt = {
    dependencies = ["nokogiri" "rest-client"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1gwdjqhk4s37b0j0igx6hhny5mxazvmr86m1l6vgzz22zk2rf0d2";
      type = "gem";
    };
    version = "0.1.7";
  };
  rbvmomi = {
    dependencies = ["builder" "json" "nokogiri" "optimist"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0gw57pad2g072lsv0pfhsifi20sz1ncsv896qp9ahd34nrb2gw0d";
      type = "gem";
    };
    version = "2.2.0";
  };
  rest-client = {
    dependencies = ["http-accept" "http-cookie" "mime-types" "netrc"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1qs74yzl58agzx9dgjhcpgmzfn61fqkk33k1js2y5yhlvc5l19im";
      type = "gem";
    };
    version = "2.1.0";
  };
  ruby-vnc = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0qp13ya5zaj2siyvsprih21yp997gql02xckxhjqv8gy8qbg59d0";
      type = "gem";
    };
    version = "1.0.1";
  };
  thor = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1yhrnp9x8qcy5vc7g438amd5j9sw83ih7c30dr6g6slgw9zj3g29";
      type = "gem";
    };
    version = "0.20.3";
  };
  to_slug = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "13vq9c60ibdgvsfc05pfk9hnff7j6200vfgk8273kjyc13q063qw";
      type = "gem";
    };
    version = "1.0.8";
  };
  unf = {
    dependencies = ["unf_ext"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0bh2cf73i2ffh4fcpdn9ir4mhq8zi50ik0zqa1braahzadx536a9";
      type = "gem";
    };
    version = "0.1.4";
  };
  unf_ext = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1ll6w64ibh81qwvjx19h8nj7mngxgffg7aigjx11klvf5k2g4nxf";
      type = "gem";
    };
    version = "0.0.7.6";
  };
  veewee = {
    dependencies = ["ansi" "childprocess" "fission" "fog" "grit" "highline" "i18n" "json" "mime-types" "net-ssh" "os" "popen4" "progressbar" "ruby-vnc" "thor" "to_slug"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0n47dxd151dwpnpwa2pjcfxzlqsv13flrdqvn4191xjffikdbjp4";
      type = "gem";
    };
    version = "0.4.5.1";
  };
  xml-simple = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0xlqplda3fix5pcykzsyzwgnbamb3qrqkgbrhhfz2a2fxhrkvhw8";
      type = "gem";
    };
    version = "1.1.5";
  };
  xmlrpc = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1s744iwblw262gj357pky3d9fcx9hisvla7rnw29ysn5zsb6i683";
      type = "gem";
    };
    version = "0.3.0";
  };
}
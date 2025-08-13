baseline
baseline: spec
  <baseline>

  spec
    for: #'gemstone'
    do: [
      spec
          package: 'FastCGIPool';
          package: 'FastCGI' 
              with: [ spec requires: 'FastCGIPool'].
      spec
          group: 'Core' with: #('FastCGI') ]
rule all:
  input:
    'output/data/my-processed-data.csv',
    'figures/my-amazing-figure.pdf'

rule plot_amazing_figure:
  input:
    data = 'output/data/my-processed-data.csv'
  output:
    figure = 'figures/my-amazing-figure.pdf'
  shell:
    'scripts/make-my-figure.R'

rule download_my_data:
  params:
    website = 'www.mywebsite.com/my_csvfile.csv'
  output:
    csv = 'output/data/my-processed-data.csv'
  shell:
    'curl {params.website} -o {output.csv}'
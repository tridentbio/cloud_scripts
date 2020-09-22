export PYTHONPATH=""

MINICONDA_INSTALLER_SCRIPT=Miniconda3-4.5.4-Linux-x86_64.sh
MINICONDA_PREFIX=/usr/local
wget https://repo.continuum.io/miniconda/$MINICONDA_INSTALLER_SCRIPT
chmod +x $MINICONDA_INSTALLER_SCRIPT
./$MINICONDA_INSTALLER_SCRIPT -b -f -p $MINICONDA_PREFIX

conda install --channel defaults conda python=3.6 --yes
conda update --channel defaults --all --yes

conda install --channel conda-forge rdkit networkx --yes

conda install pytorch cudatoolkit=10.1 -c pytorch --yes

export PATH="${PATH}:/usr/local/lib/python3.6/site-packages"

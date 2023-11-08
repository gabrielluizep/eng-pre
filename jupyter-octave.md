## VSCode Jupyter Octave

```
# Instalando dependencias python
sudo apt install python3 python3-pip

# Instalando mamba gerenciador de pacotes/venv python
curl -L -O https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Linux-x86_64.sh
bash Miniforge3-Linux-x86_64.sh

# Criando venv
mamba create -n xoctave -c conda-forge xeus-octave
mamba activate xoctave
```

### VSCode

Extensões:

- Python
- Octave
- Jupyter

### Testando

- Criar arquivo `.ipynb`
- Clicar no botão de kernel no canto superior direito
  - Se aparecer o kernel, xoctave selecionar
  - Caso contrário, `Select Another Kernel > Jupyter Kernel > Octave`

Com isso deverá ter code highlighting e código funcionando
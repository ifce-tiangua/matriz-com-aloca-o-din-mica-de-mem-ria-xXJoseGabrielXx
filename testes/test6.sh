echo "Testando (Desalocacao)..."
echo

# Teste de execução do programa
if [ $? -eq 0 ] ; then
  echo "Running ok: Program exited zero"
else
  echo "Fail on running: Program did not exit zero"
  exit 1
fi

# Teste de uso do malloc
if grep -E '^[^/]*\free\b' ./main.c; then
  echo "Pass: A função free foi usada no código"
else
  echo "Fail: A função free não foi encontrada no código"
  exit 1
fi

echo
echo "Teste 6 realizado com sucesso"

exit 0

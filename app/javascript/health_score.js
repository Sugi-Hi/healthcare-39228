window.addEventListener('load', () => {

  // ストレス度合・優先順位を選択した点数をstressInputという変数へ格納
  const stressInput = document.getElementById("stress-score");
  const refreshInput = document.getElementById("refresh-score");
  // コンソール起動でログでの表示確認
  console.log("ストレスレベル")
  console.log("リフレッシュランク")

  stressInput.addEventListener("input", () => {
    const inputStressScore = stressInput.value;
    console.log("ストレス値");

    const addStressScore = document.getElementById("add-stress-score");
    addStressScore.innerHTML = inputStressScore
  })

  refreshInput.addEventListener("input", () => {
    const inputRefreshScore = refreshInput.value;
    console.log("リフレッシュ値");

    const addRefreshScore = document.getElementById("add-refresh-score");
    addRefreshScore.innerHTML = inputRefreshScore
  })

});

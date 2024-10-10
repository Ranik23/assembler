.intel_syntax noprefix
.global main

main:

  call readi64       # Чтение индекса

  mov rdx, rax       # Копируем индекс в %rdx

  call readi64

  mov rbx, rax       # Копируем значение в %rbx

  lea r12, [arr]       # Загрузка адреса массива в %edi
  
  shl rdx, 2         # Умножаем индекс на 4 (так как int 4 байта)

  add r12, rdx       # Получаем адрес нужного элемента массива

  mov rdi, [r12]     # Читаем значение элемента по адресу

  call writei64      # Выводим это значение

  mov [r12], rdx     # Записываем новое значение в массив

  jmp main           # Возвращаемся к началу */

fin:
  call finish        # Завершаем программу

.data
arr:
  .skip 1000 * 4     # Резервируем место под массив из 1000 элементов (по 4 байта)


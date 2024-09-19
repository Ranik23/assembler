# Основное правило для сборки
%_build: %.S simpleio_x86_64.S
	gcc -no-pie -o $@ $< simpleio_x86_64.S

# Правило для запуска цели
%_run: %_build
	LD_PRELOAD=/opt/glibc-2.40/lib/libc.so.6 /opt/glibc-2.40/lib/ld-linux-x86-64.so.2 ./$<

# Очистка сгенерированных файлов
clean:
	rm -f $(basename $(wildcard *.S))


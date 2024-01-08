# Макрос для добавления всех каталогов в текущей директории в билд
MACRO(add_all_subdirectory CURRENT_DIR)
    FILE(GLOB children RELATIVE ${CURRENT_DIR} ${CURRENT_DIR}/*)
    SET(dirlist "")
    FOREACH(child ${children})
        IF(IS_DIRECTORY ${CURRENT_DIR}/${child})
            LIST(APPEND dirlist ${child})
        ENDIF()
    ENDFOREACH()
    FOREACH(subdir ${dirlist})
        add_subdirectory(${subdir})
    ENDFOREACH()
ENDMACRO()


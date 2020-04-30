#just install the wvga sample video referred by matrix gui

VIDEO_FILES_remove_varsomam33  = "video_480p video_wqvga"
VIDEO_FILES_remove_varsomam43  = "video_480p video_wqvga"
VIDEO_FILES_append_varsomam43  = " video_wvga"
VIDEO_FILES_remove_varsomam33c  = "video_480p video_wqvga"
VIDEO_FILES_remove_varsomam33crt  = "video_480p video_wqvga"
VIDEO_FILES_remove_varsomam33cv1  = "video_480p video_wqvga"
VIDEO_FILES_remove_varsomam33cv1rt  = "video_480p video_wqvga"
VIDEO_FILES_remove_varsomam33cv2  = "video_480p video_wqvga"
VIDEO_FILES_remove_varsomam33cv2rt  = "video_480p video_wqvga"

do_install_append() {
    rm ${D}${datadir}/ti/video/HistoryOfTI*
    rm ${D}${datadir}/ti/video/*.m2v
}

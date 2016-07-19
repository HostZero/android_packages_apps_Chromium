.class public Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;
.super Ljava/lang/Object;
.source "OfflinePageUtils.java"


# static fields
.field public static final RELOAD_BUTTON:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFreeSpaceInBytes()J
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getSnackbarController(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;
    .locals 2

    .prologue
    .line 230
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    .line 233
    new-instance v1, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils$1;

    invoke-direct {v1, p0, v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils$1;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;I)V

    return-object v1
.end method

.method public static getStringId(I)I
    .locals 2

    .prologue
    .line 70
    invoke-static {}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return p0

    .line 73
    :cond_1
    invoke-static {}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->getFeatureMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 76
    sget v0, Lorg/chromium/chrome/R$string;->bookmark_action_bar_delete:I

    if-ne p0, v0, :cond_2

    .line 77
    sget p0, Lorg/chromium/chrome/R$string;->offline_pages_action_bar_delete:I

    goto :goto_0

    .line 78
    :cond_2
    sget v0, Lorg/chromium/chrome/R$string;->bookmark_action_bar_move:I

    if-ne p0, v0, :cond_3

    .line 79
    sget p0, Lorg/chromium/chrome/R$string;->offline_pages_action_bar_move:I

    goto :goto_0

    .line 80
    :cond_3
    sget v0, Lorg/chromium/chrome/R$string;->bookmark_action_bar_search:I

    if-ne p0, v0, :cond_4

    .line 81
    sget p0, Lorg/chromium/chrome/R$string;->offline_pages_action_bar_search:I

    goto :goto_0

    .line 82
    :cond_4
    sget v0, Lorg/chromium/chrome/R$string;->edit_bookmark:I

    if-ne p0, v0, :cond_5

    .line 83
    sget p0, Lorg/chromium/chrome/R$string;->offline_pages_edit_item:I

    goto :goto_0

    .line 84
    :cond_5
    sget v0, Lorg/chromium/chrome/R$string;->bookmark_drawer_all_items:I

    if-ne p0, v0, :cond_6

    .line 85
    sget p0, Lorg/chromium/chrome/R$string;->offline_pages_all_items:I

    goto :goto_0

    .line 86
    :cond_6
    sget v0, Lorg/chromium/chrome/R$string;->bookmark_title_bar_all_items:I

    if-ne p0, v0, :cond_7

    .line 87
    sget p0, Lorg/chromium/chrome/R$string;->offline_pages_all_items:I

    goto :goto_0

    .line 88
    :cond_7
    sget v0, Lorg/chromium/chrome/R$string;->bookmarks:I

    if-ne p0, v0, :cond_8

    .line 89
    sget p0, Lorg/chromium/chrome/R$string;->offline_pages_saved_pages:I

    goto :goto_0

    .line 90
    :cond_8
    sget v0, Lorg/chromium/chrome/R$string;->menu_bookmarks:I

    if-ne p0, v0, :cond_9

    .line 91
    sget p0, Lorg/chromium/chrome/R$string;->menu_bookmarks_offline_pages:I

    goto :goto_0

    .line 92
    :cond_9
    sget v0, Lorg/chromium/chrome/R$string;->ntp_bookmarks:I

    if-ne p0, v0, :cond_a

    .line 93
    sget p0, Lorg/chromium/chrome/R$string;->offline_pages_ntp_button_name:I

    goto :goto_0

    .line 94
    :cond_a
    sget v0, Lorg/chromium/chrome/R$string;->accessibility_ntp_toolbar_btn_bookmarks:I

    if-ne p0, v0, :cond_b

    .line 95
    sget p0, Lorg/chromium/chrome/R$string;->offline_pages_ntp_button_accessibility:I

    goto :goto_0

    .line 96
    :cond_b
    sget v0, Lorg/chromium/chrome/R$string;->bookmarks_folder_empty:I

    if-ne p0, v0, :cond_c

    .line 97
    sget p0, Lorg/chromium/chrome/R$string;->offline_pages_folder_empty:I

    goto :goto_0

    .line 98
    :cond_c
    sget v0, Lorg/chromium/chrome/R$string;->new_tab_incognito_message:I

    if-ne p0, v0, :cond_d

    .line 99
    sget p0, Lorg/chromium/chrome/R$string;->offline_pages_new_tab_incognito_message:I

    goto :goto_0

    .line 100
    :cond_d
    sget v0, Lorg/chromium/chrome/R$string;->offline_pages_as_bookmarks_page_saved:I

    if-ne p0, v0, :cond_e

    .line 101
    sget p0, Lorg/chromium/chrome/R$string;->offline_pages_page_saved:I

    goto :goto_0

    .line 102
    :cond_e
    sget v0, Lorg/chromium/chrome/R$string;->offline_pages_as_bookmarks_page_saved_folder:I

    if-ne p0, v0, :cond_f

    .line 103
    sget p0, Lorg/chromium/chrome/R$string;->offline_pages_page_saved_folder:I

    goto :goto_0

    .line 104
    :cond_f
    sget v0, Lorg/chromium/chrome/R$string;->offline_pages_as_bookmarks_page_skipped:I

    if-ne p0, v0, :cond_10

    .line 105
    sget p0, Lorg/chromium/chrome/R$string;->offline_pages_page_skipped:I

    goto :goto_0

    .line 106
    :cond_10
    sget v0, Lorg/chromium/chrome/R$string;->offline_pages_as_bookmarks_page_saved_storage_near_full:I

    if-ne p0, v0, :cond_11

    .line 108
    sget p0, Lorg/chromium/chrome/R$string;->offline_pages_page_saved_storage_near_full:I

    goto :goto_0

    .line 109
    :cond_11
    sget v0, Lorg/chromium/chrome/R$string;->offline_pages_as_bookmarks_page_failed_to_save:I

    if-ne p0, v0, :cond_12

    .line 110
    sget p0, Lorg/chromium/chrome/R$string;->offline_pages_page_failed_to_save:I

    goto :goto_0

    .line 111
    :cond_12
    sget v0, Lorg/chromium/chrome/R$string;->offline_pages_as_bookmarks_page_failed_to_save_storage_near_full:I

    if-ne p0, v0, :cond_13

    .line 113
    sget p0, Lorg/chromium/chrome/R$string;->offline_pages_page_failed_to_save_storage_near_full:I

    goto/16 :goto_0

    .line 114
    :cond_13
    sget v0, Lorg/chromium/chrome/R$string;->offline_pages_as_bookmarks_storage_space_message:I

    if-ne p0, v0, :cond_14

    .line 115
    sget p0, Lorg/chromium/chrome/R$string;->offline_pages_storage_space_message:I

    goto/16 :goto_0

    .line 116
    :cond_14
    sget v0, Lorg/chromium/chrome/R$string;->offline_pages_as_bookmarks_viewing_offline_page:I

    if-ne p0, v0, :cond_15

    .line 117
    sget p0, Lorg/chromium/chrome/R$string;->offline_pages_viewing_offline_page:I

    goto/16 :goto_0

    .line 118
    :cond_15
    sget v0, Lorg/chromium/chrome/R$string;->offline_pages_as_bookmarks_offline_page_size:I

    if-ne p0, v0, :cond_0

    .line 119
    sget p0, Lorg/chromium/chrome/R$string;->bookmark_offline_page_size:I

    goto/16 :goto_0
.end method

.method public static getTotalSpaceInBytes()J
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public static isConnected()Z
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->isOnline()Z

    move-result v0

    return v0
.end method

.method public static isStorageAlmostFull()Z
    .locals 4

    .prologue
    .line 53
    invoke-static {}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->getFreeSpaceInBytes()J

    move-result-wide v0

    const-wide/32 v2, 0xa00000

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static preferOnlineVersion(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 131
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-string/jumbo v0, "OfflinePageUtils"

    const-string/jumbo v1, "Refreshing to the online version of an offline page, since we are online"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    new-instance v0, Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getOfflinePageOriginalUrl()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    .line 135
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/content_public/browser/LoadUrlParams;->setShouldReplaceCurrentEntry(Z)V

    .line 136
    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/tab/Tab;->loadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    .line 138
    :cond_0
    return-void
.end method

.method public static showOfflineSnackbarIfNecessary(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->showOfflineSnackbarIfNecessary(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;)V

    .line 164
    return-void
.end method

.method public static showOfflineSnackbarIfNecessary(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;)V
    .locals 3

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "showOfflineSnackbarIfNecessary, controller is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    invoke-static {}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isOfflinePage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    if-nez p2, :cond_2

    .line 185
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->getSnackbarController(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;

    move-result-object p2

    .line 188
    :cond_2
    invoke-static {}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->isConnected()Z

    move-result v0

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "showOfflineSnackbarIfNecessary called, tabId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", hidden "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isHidden()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", connected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", controller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isHidden()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Offering to reload page, controller "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    invoke-static {p0, p2}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->showReloadSnackbar(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;)V

    goto :goto_0

    .line 203
    :cond_3
    invoke-static {p0, p1, v0, p2}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageTabObserver;->addObserverForTab(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/chrome/browser/tab/Tab;ZLorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;)V

    goto :goto_0
.end method

.method public static showReloadSnackbar(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "showReloadSnackbar called with controller "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 216
    sget v1, Lorg/chromium/chrome/R$string;->offline_pages_viewing_offline_page:I

    invoke-static {v1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->getStringId(I)I

    move-result v1

    .line 217
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, v3}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->make(Ljava/lang/CharSequence;Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;I)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->reload:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->setAction(Ljava/lang/String;Ljava/lang/Object;)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v0

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "made snackbar with controller "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    const/16 v1, 0x1770

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->setDuration(I)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    .line 222
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getSnackbarManager()Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->showSnackbar(Lorg/chromium/chrome/browser/snackbar/Snackbar;)V

    .line 223
    return-void
.end method

.method public static stripSchemeFromOnlineUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 148
    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 153
    :cond_0
    :goto_0
    return-object v0

    .line 150
    :cond_1
    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

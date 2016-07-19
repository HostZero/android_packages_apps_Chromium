.class Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator$ContextMenuUma;
.super Ljava/lang/Object;
.source "ChromeContextMenuPopulator.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final ACTION_COPY_EMAIL_ADDRESS:I = 0x3

.field static final ACTION_COPY_LINK_ADDRESS:I = 0x2

.field static final ACTION_COPY_LINK_TEXT:I = 0x4

.field static final ACTION_LOAD_IMAGES:I = 0xc

.field static final ACTION_LOAD_ORIGINAL_IMAGE:I = 0xd

.field static final ACTION_OPEN_IMAGE:I = 0x7

.field static final ACTION_OPEN_IMAGE_IN_NEW_TAB:I = 0x8

.field static final ACTION_OPEN_IN_INCOGNITO_TAB:I = 0x1

.field static final ACTION_OPEN_IN_NEW_TAB:I = 0x0

.field static final ACTION_SAVE_IMAGE:I = 0x6

.field static final ACTION_SAVE_LINK:I = 0x5

.field static final ACTION_SAVE_VIDEO:I = 0xe

.field static final ACTION_SEARCH_BY_IMAGE:I = 0xb

.field static final ACTION_SHARE_IMAGE:I = 0x13

.field static final NUM_ACTIONS:I = 0x14

.field static final NUM_TYPES:I = 0x6

.field static final TYPE_AUDIO:I = 0x3

.field static final TYPE_IMAGE:I = 0x2

.field static final TYPE_PDF:I = 0x5

.field static final TYPE_TEXT:I = 0x1

.field static final TYPE_UNKNOWN:I = 0x0

.field static final TYPE_VIDEO:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator$ContextMenuUma;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static record(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 105
    sget-boolean v0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator$ContextMenuUma;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 106
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator$ContextMenuUma;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-lt p1, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 108
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    const-string/jumbo v0, "ContextMenu.SelectedOption.Video"

    .line 118
    :goto_0
    invoke-static {v0, p1, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 119
    return-void

    .line 110
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->isImage()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 111
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->isAnchor()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "ContextMenu.SelectedOption.ImageLink"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "ContextMenu.SelectedOption.Image"

    goto :goto_0

    .line 115
    :cond_4
    sget-boolean v0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator$ContextMenuUma;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->isAnchor()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 116
    :cond_5
    const-string/jumbo v0, "ContextMenu.SelectedOption.Link"

    goto :goto_0
.end method

.method static recordSaveLinkTypes(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 126
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    const/4 v0, 0x0

    .line 128
    if-eqz v1, :cond_0

    .line 129
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    if-eqz v1, :cond_0

    .line 131
    const-string/jumbo v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    const/4 v0, 0x1

    .line 144
    :cond_0
    :goto_0
    const-string/jumbo v1, "ContextMenu.SaveLinkType"

    const/4 v2, 0x6

    invoke-static {v1, v0, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 146
    return-void

    .line 133
    :cond_1
    const-string/jumbo v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 134
    const/4 v0, 0x2

    goto :goto_0

    .line 135
    :cond_2
    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 136
    const/4 v0, 0x3

    goto :goto_0

    .line 137
    :cond_3
    const-string/jumbo v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 138
    const/4 v0, 0x4

    goto :goto_0

    .line 139
    :cond_4
    const-string/jumbo v2, "application/pdf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    const/4 v0, 0x5

    goto :goto_0
.end method

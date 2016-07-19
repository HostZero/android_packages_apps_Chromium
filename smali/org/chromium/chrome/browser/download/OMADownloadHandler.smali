.class public Lorg/chromium/chrome/browser/download/OMADownloadHandler;
.super Ljava/lang/Object;
.source "OMADownloadHandler.java"


# static fields
.field protected static final OMA_DD_VERSION:Ljava/lang/String; = "DDVersion"

.field protected static final OMA_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final OMA_DOWNLOAD_DESCRIPTOR_MIME:Ljava/lang/String; = "application/vnd.oma.dd+xml"

.field public static final OMA_DRM_CONTENT_MIME:Ljava/lang/String; = "application/vnd.oma.drm.content"

.field public static final OMA_DRM_MESSAGE_MIME:Ljava/lang/String; = "application/vnd.oma.drm.message"

.field public static final OMA_DRM_RIGHTS_MIME:Ljava/lang/String; = "application/vnd.oma.drm.rights+wbxml"

.field protected static final OMA_ICON_URI:Ljava/lang/String; = "iconURI"

.field protected static final OMA_INFO_URL:Ljava/lang/String; = "infoURL"

.field protected static final OMA_INSTALL_NOTIFY_URI:Ljava/lang/String; = "installNotifyURI"

.field protected static final OMA_INSTALL_PARAM:Ljava/lang/String; = "installParam"

.field protected static final OMA_NAME:Ljava/lang/String; = "name"

.field protected static final OMA_NEXT_URL:Ljava/lang/String; = "nextURL"

.field protected static final OMA_OBJECT_URI:Ljava/lang/String; = "objectURI"

.field protected static final OMA_SIZE:Ljava/lang/String; = "size"

.field protected static final OMA_TYPE:Ljava/lang/String; = "type"

.field protected static final OMA_VENDOR:Ljava/lang/String; = "vendor"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPendingOMADownloads:Landroid/util/LongSparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->mPendingOMADownloads:Landroid/util/LongSparseArray;

    .line 196
    iput-object p1, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->mContext:Landroid/content/Context;

    .line 197
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/download/OMADownloadHandler;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/download/OMADownloadHandler;Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->sendNotification(Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/download/OMADownloadHandler;ILorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->showDownloadWarningDialog(ILorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/download/OMADownloadHandler;JLorg/chromium/content/browser/DownloadInfo;Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->showOMAInfoDialog(JLorg/chromium/content/browser/DownloadInfo;Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;)V

    return-void
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/download/OMADownloadHandler;JLorg/chromium/content/browser/DownloadInfo;Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->downloadOMAContent(JLorg/chromium/content/browser/DownloadInfo;Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;)V

    return-void
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/download/OMADownloadHandler;Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->sendInstallNotificationAndNextStep(Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/download/OMADownloadHandler;Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->showNextUrlDialog(Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;)V

    return-void
.end method

.method private downloadOMAContent(JLorg/chromium/content/browser/DownloadInfo;Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;)V
    .locals 5

    .prologue
    .line 581
    if-nez p4, :cond_0

    .line 606
    :goto_0
    return-void

    .line 582
    :cond_0
    invoke-virtual {p4}, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;->getDrmType()Ljava/lang/String;

    move-result-object v0

    .line 583
    if-nez v0, :cond_1

    .line 584
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p4}, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->getOpennableType(Landroid/content/pm/PackageManager;Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;)Ljava/lang/String;

    move-result-object v0

    .line 586
    :cond_1
    const-string/jumbo v1, "name"

    invoke-virtual {p4, v1}, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 587
    const-string/jumbo v2, "objectURI"

    invoke-virtual {p4, v2}, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 588
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 589
    const/4 v1, 0x0

    invoke-static {v2, v1, v0}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 591
    :cond_2
    invoke-static {p3}, Lorg/chromium/content/browser/DownloadInfo$Builder;->fromDownloadInfo(Lorg/chromium/content/browser/DownloadInfo;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setFileName(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setUrl(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setMimeType(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v0

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setDownloadId(I)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v0

    const-string/jumbo v1, "description"

    invoke-virtual {p4, v1}, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setDescription(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v0

    invoke-static {p4}, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->getSize(Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setContentLength(J)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/DownloadInfo$Builder;->build()Lorg/chromium/content/browser/DownloadInfo;

    move-result-object v0

    .line 602
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->getDownloadManagerService(Landroid/content/Context;)Lorg/chromium/chrome/browser/download/DownloadManagerService;

    move-result-object v1

    const-string/jumbo v2, "installNotifyURI"

    invoke-virtual {p4, v2}, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;->isValueEmpty(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->enqueueDownloadManagerRequest(Lorg/chromium/content/browser/DownloadInfo;Z)V

    .line 605
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->mPendingOMADownloads:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2, p4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0
.end method

.method static getOpennableType(Landroid/content/pm/PackageManager;Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 474
    const-string/jumbo v0, "objectURI"

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;->isValueEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 491
    :goto_0
    return-object v0

    .line 477
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.VIEW"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 478
    const-string/jumbo v0, "objectURI"

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 479
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;->getTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 480
    const-string/jumbo v5, "application/vnd.oma.drm.message"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "application/vnd.oma.drm.content"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "application/vnd.oma.dd+xml"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "application/vnd.oma.drm.rights+wbxml"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 484
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    const/high16 v5, 0x10000

    invoke-virtual {p0, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 491
    goto :goto_0
.end method

.method protected static getSize(Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;)J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 563
    const-string/jumbo v2, "size"

    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 565
    if-nez v2, :cond_0

    .line 570
    :goto_0
    return-wide v0

    .line 565
    :cond_0
    :try_start_0
    const-string/jumbo v3, ","

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 567
    :catch_0
    move-exception v2

    .line 568
    const-string/jumbo v3, "OMADownloadHandler"

    const-string/jumbo v4, "Cannot parse size information."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static parseDownloadDescriptor(Ljava/io/InputStream;)Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 503
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 504
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 505
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 506
    const/4 v0, 0x0

    invoke-interface {v5, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 507
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 509
    new-instance v4, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;

    invoke-direct {v4}, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;-><init>()V

    .line 511
    new-instance v6, Ljava/util/ArrayList;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v7, "type"

    aput-object v7, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v7, "size"

    aput-object v7, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v7, "objectURI"

    aput-object v7, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v7, "installNotifyURI"

    aput-object v7, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v7, "nextURL"

    aput-object v7, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v7, "DDVersion"

    aput-object v7, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v7, "name"

    aput-object v7, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v7, "description"

    aput-object v7, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v7, "vendor"

    aput-object v7, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v7, "infoURL"

    aput-object v7, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v7, "iconURI"

    aput-object v7, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v7, "installParam"

    aput-object v7, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v3

    move v1, v0

    move-object v0, v3

    .line 515
    :goto_0
    if-eq v1, v8, :cond_6

    .line 516
    if-nez v1, :cond_0

    .line 517
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    move-object v0, v3

    .line 551
    :goto_1
    return-object v0

    .line 518
    :cond_0
    if-ne v1, v9, :cond_3

    .line 519
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 520
    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 521
    if-eqz v2, :cond_1

    .line 522
    const-string/jumbo v0, "OMADownloadHandler"

    const-string/jumbo v1, "Nested attributes was found in the download descriptor"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 523
    goto :goto_1

    .line 525
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    move-object v2, v1

    .line 543
    :cond_2
    :goto_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 528
    :cond_3
    if-ne v1, v10, :cond_5

    .line 529
    if-eqz v2, :cond_2

    .line 530
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 531
    const-string/jumbo v0, "OMADownloadHandler"

    const-string/jumbo v1, "Nested attributes was found in the download descriptor"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 532
    goto :goto_1

    .line 534
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;->addAttributeValue(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    move-object v2, v3

    .line 536
    goto :goto_3

    .line 538
    :cond_5
    if-ne v1, v11, :cond_2

    .line 539
    if-eqz v2, :cond_2

    .line 540
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 546
    :catch_0
    move-exception v0

    .line 547
    const-string/jumbo v1, "OMADownloadHandler"

    const-string/jumbo v2, "Failed to parse download descriptor."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v3

    .line 548
    goto :goto_1

    :cond_6
    move-object v0, v4

    .line 545
    goto :goto_1

    .line 549
    :catch_1
    move-exception v0

    .line 550
    const-string/jumbo v1, "OMADownloadHandler"

    const-string/jumbo v2, "Failed to read download descriptor."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v3

    .line 551
    goto :goto_1

    :cond_7
    move-object v1, v2

    goto :goto_2
.end method

.method private sendInstallNotificationAndNextStep(Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 339
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->sendNotification(Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->showNextUrlDialog(Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;)V

    .line 342
    :cond_0
    return-void
.end method

.method private sendNotification(Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 354
    if-nez p1, :cond_1

    .line 358
    :cond_0
    :goto_0
    return v0

    .line 355
    :cond_1
    const-string/jumbo v1, "installNotifyURI"

    invoke-virtual {p1, v1}, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;->isValueEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 356
    new-instance v1, Lorg/chromium/chrome/browser/download/OMADownloadHandler$PostStatusTask;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/chromium/chrome/browser/download/OMADownloadHandler$PostStatusTask;-><init>(Lorg/chromium/chrome/browser/download/OMADownloadHandler;Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;)V

    .line 357
    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/download/OMADownloadHandler$PostStatusTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 358
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showDownloadWarningDialog(ILorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 418
    new-instance v0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$2;

    invoke-direct {v0, p0, p2, p3, p4}, Lorg/chromium/chrome/browser/download/OMADownloadHandler$2;-><init>(Lorg/chromium/chrome/browser/download/OMADownloadHandler;Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;)V

    .line 426
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$style;->AlertDialogTheme:I

    invoke-direct {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->ok:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 432
    return-void
.end method

.method private showNextUrlDialog(Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;)V
    .locals 4

    .prologue
    .line 440
    const-string/jumbo v0, "nextURL"

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;->isValueEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    :goto_0
    return-void

    .line 443
    :cond_0
    const-string/jumbo v0, "nextURL"

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 444
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object v1

    .line 445
    new-instance v2, Lorg/chromium/chrome/browser/download/OMADownloadHandler$3;

    invoke-direct {v2, p0, v0, v1}, Lorg/chromium/chrome/browser/download/OMADownloadHandler$3;-><init>(Lorg/chromium/chrome/browser/download/OMADownloadHandler;Ljava/lang/String;Landroid/app/Activity;)V

    .line 457
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/chromium/chrome/R$string;->open_url_post_oma_download:I

    invoke-virtual {v3, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v3, Lorg/chromium/chrome/R$string;->ok:I

    invoke-virtual {v1, v3, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v3, Lorg/chromium/chrome/R$string;->cancel:I

    invoke-virtual {v1, v3, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method private showOMAInfoDialog(JLorg/chromium/content/browser/DownloadInfo;Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;)V
    .locals 7

    .prologue
    .line 370
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 372
    sget v1, Lorg/chromium/chrome/R$layout;->confirm_oma_download:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 374
    sget v0, Lorg/chromium/chrome/R$id;->oma_download_name:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 375
    const-string/jumbo v1, "name"

    invoke-virtual {p4, v1}, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    sget v0, Lorg/chromium/chrome/R$id;->oma_download_vendor:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 377
    const-string/jumbo v1, "vendor"

    invoke-virtual {p4, v1}, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    sget v0, Lorg/chromium/chrome/R$id;->oma_download_size:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 379
    const-string/jumbo v1, "size"

    invoke-virtual {p4, v1}, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    sget v0, Lorg/chromium/chrome/R$id;->oma_download_type:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 381
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1, p4}, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->getOpennableType(Landroid/content/pm/PackageManager;Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    sget v0, Lorg/chromium/chrome/R$id;->oma_download_description:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 383
    const-string/jumbo v1, "description"

    invoke-virtual {p4, v1}, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    new-instance v0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$1;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/download/OMADownloadHandler$1;-><init>(Lorg/chromium/chrome/browser/download/OMADownloadHandler;JLorg/chromium/content/browser/DownloadInfo;Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;)V

    .line 395
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$style;->AlertDialogTheme:I

    invoke-direct {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v2, Lorg/chromium/chrome/R$string;->proceed_oma_download_message:I

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->ok:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->cancel:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 403
    return-void
.end method


# virtual methods
.method public getInstallNotifyInfo(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 642
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->mPendingOMADownloads:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;

    .line 643
    const-string/jumbo v1, "installNotifyURI"

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleOMADownload(Lorg/chromium/content/browser/DownloadInfo;J)V
    .locals 2

    .prologue
    .line 206
    new-instance v0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAParserTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAParserTask;-><init>(Lorg/chromium/chrome/browser/download/OMADownloadHandler;Lorg/chromium/content/browser/DownloadInfo;J)V

    .line 207
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAParserTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 208
    return-void
.end method

.method public isPendingOMADownload(J)Z
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->mPendingOMADownloads:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDownloadCompleted(Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 280
    invoke-virtual {p1}, Lorg/chromium/content/browser/DownloadInfo;->getDownloadId()I

    move-result v0

    int-to-long v2, v0

    .line 281
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->mPendingOMADownloads:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;

    .line 282
    if-nez v0, :cond_0

    .line 283
    new-instance v0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;-><init>()V

    .line 284
    const-string/jumbo v1, "installNotifyURI"

    invoke-virtual {v0, v1, p2}, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;->addAttributeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_0
    const-string/jumbo v1, "900 Success \n\r"

    invoke-direct {p0, v0, p1, v1}, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->sendInstallNotificationAndNextStep(Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->mPendingOMADownloads:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    .line 288
    return-void
.end method

.method public onDownloadFailed(Lorg/chromium/content/browser/DownloadInfo;ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 298
    const-string/jumbo v0, "952 Device Aborted \n\r"

    .line 299
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    move-object v1, v0

    .line 314
    :goto_0
    invoke-virtual {p1}, Lorg/chromium/content/browser/DownloadInfo;->getDownloadId()I

    move-result v0

    int-to-long v2, v0

    .line 315
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->mPendingOMADownloads:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;

    .line 316
    if-nez v0, :cond_0

    .line 318
    new-instance v0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;-><init>()V

    .line 319
    const-string/jumbo v2, "installNotifyURI"

    invoke-virtual {v0, v2, p3}, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;->addAttributeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-direct {p0, v0, p1, v1}, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->sendInstallNotificationAndNextStep(Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;)V

    .line 326
    :goto_1
    return-void

    .line 301
    :pswitch_1
    const-string/jumbo v0, "903 Loss of Service \n\r"

    move-object v1, v0

    .line 302
    goto :goto_0

    .line 306
    :pswitch_2
    const-string/jumbo v0, "954 Loader Error \n\r"

    move-object v1, v0

    .line 307
    goto :goto_0

    .line 309
    :pswitch_3
    const-string/jumbo v0, "901 insufficient memory \n\r"

    move-object v1, v0

    goto :goto_0

    .line 323
    :cond_0
    sget v4, Lorg/chromium/chrome/R$string;->oma_download_failed:I

    invoke-direct {p0, v4, v0, p1, v1}, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->showDownloadWarningDialog(ILorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->mPendingOMADownloads:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    goto :goto_1

    .line 299
    nop

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateDownloadInfo(Lorg/chromium/content/browser/DownloadInfo;J)Lorg/chromium/content/browser/DownloadInfo;
    .locals 4

    .prologue
    .line 626
    invoke-virtual {p1}, Lorg/chromium/content/browser/DownloadInfo;->getDownloadId()I

    move-result v0

    int-to-long v2, v0

    .line 627
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->mPendingOMADownloads:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;

    .line 628
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->mPendingOMADownloads:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    .line 629
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->mPendingOMADownloads:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p2, p3, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 630
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->fromDownloadInfo(Lorg/chromium/content/browser/DownloadInfo;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v0

    long-to-int v1, p2

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setDownloadId(I)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/DownloadInfo$Builder;->build()Lorg/chromium/content/browser/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

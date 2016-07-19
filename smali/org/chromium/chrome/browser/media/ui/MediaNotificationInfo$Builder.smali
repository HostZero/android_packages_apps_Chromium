.class public final Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;
.super Ljava/lang/Object;
.source "MediaNotificationInfo.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mActions:I

.field private mContentIntent:Landroid/content/Intent;

.field private mIcon:I

.field private mId:I

.field private mImage:Landroid/graphics/Bitmap;

.field private mIsPaused:Z

.field private mIsPrivate:Z

.field private mListener:Lorg/chromium/chrome/browser/media/ui/MediaNotificationListener;

.field private mMetadata:Lorg/chromium/content_public/common/MediaMetadata;

.field private mOrigin:Ljava/lang/String;

.field private mTabId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->mIsPaused:Z

    .line 48
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->mOrigin:Ljava/lang/String;

    .line 49
    iput v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->mTabId:I

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->mIsPrivate:Z

    .line 51
    iput v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->mIcon:I

    .line 52
    const/4 v0, 0x5

    iput v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->mActions:I

    .line 53
    iput v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->mId:I

    .line 54
    iput-object v2, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->mContentIntent:Landroid/content/Intent;

    .line 55
    iput-object v2, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->mImage:Landroid/graphics/Bitmap;

    .line 56
    iput-object v2, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->mListener:Lorg/chromium/chrome/browser/media/ui/MediaNotificationListener;

    .line 62
    return-void
.end method


# virtual methods
.method public final build()Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;
    .locals 13

    .prologue
    .line 65
    sget-boolean v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->mMetadata:Lorg/chromium/content_public/common/MediaMetadata;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 66
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->mOrigin:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 67
    :cond_1
    sget-boolean v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->mListener:Lorg/chromium/chrome/browser/media/ui/MediaNotificationListener;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 69
    :cond_2
    new-instance v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->mMetadata:Lorg/chromium/content_public/common/MediaMetadata;

    iget-boolean v2, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->mIsPaused:Z

    iget-object v3, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->mOrigin:Ljava/lang/String;

    iget v4, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->mTabId:I

    iget-boolean v5, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->mIsPrivate:Z

    iget v6, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->mIcon:I

    iget v7, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->mActions:I

    iget v8, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->mId:I

    iget-object v9, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->mImage:Landroid/graphics/Bitmap;

    iget-object v10, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->mContentIntent:Landroid/content/Intent;

    iget-object v11, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->mListener:Lorg/chromium/chrome/browser/media/ui/MediaNotificationListener;

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v12}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;-><init>(Lorg/chromium/content_public/common/MediaMetadata;ZLjava/lang/String;IZIIILandroid/graphics/Bitmap;Landroid/content/Intent;Lorg/chromium/chrome/browser/media/ui/MediaNotificationListener;Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$1;)V

    return-object v0
.end method

.method public final setActions(I)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;
    .locals 0

    .prologue
    .line 114
    iput p1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->mActions:I

    .line 115
    return-object p0
.end method

.method public final setContentIntent(Landroid/content/Intent;)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->mContentIntent:Landroid/content/Intent;

    .line 130
    return-object p0
.end method

.method public final setIcon(I)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;
    .locals 0

    .prologue
    .line 109
    iput p1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->mIcon:I

    .line 110
    return-object p0
.end method

.method public final setId(I)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;
    .locals 0

    .prologue
    .line 119
    iput p1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->mId:I

    .line 120
    return-object p0
.end method

.method public final setImage(Landroid/graphics/Bitmap;)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->mImage:Landroid/graphics/Bitmap;

    .line 125
    return-object p0
.end method

.method public final setListener(Lorg/chromium/chrome/browser/media/ui/MediaNotificationListener;)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->mListener:Lorg/chromium/chrome/browser/media/ui/MediaNotificationListener;

    .line 135
    return-object p0
.end method

.method public final setMetadata(Lorg/chromium/content_public/common/MediaMetadata;)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->mMetadata:Lorg/chromium/content_public/common/MediaMetadata;

    .line 85
    return-object p0
.end method

.method public final setOrigin(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->mOrigin:Ljava/lang/String;

    .line 95
    return-object p0
.end method

.method public final setPaused(Z)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;
    .locals 0

    .prologue
    .line 89
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->mIsPaused:Z

    .line 90
    return-object p0
.end method

.method public final setPrivate(Z)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;
    .locals 0

    .prologue
    .line 104
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->mIsPrivate:Z

    .line 105
    return-object p0
.end method

.method public final setTabId(I)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;
    .locals 0

    .prologue
    .line 99
    iput p1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->mTabId:I

    .line 100
    return-object p0
.end method

.class public Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;
.super Ljava/lang/Object;
.source "MediaNotificationInfo.java"


# static fields
.field public static final ACTION_PLAY_PAUSE:I = 0x1

.field public static final ACTION_STOP:I = 0x2

.field public static final ACTION_SWIPEAWAY:I = 0x4

.field public static final INVALID_ID:I = -0x1


# instance fields
.field public final contentIntent:Landroid/content/Intent;

.field public final icon:I

.field public final id:I

.field public final image:Landroid/graphics/Bitmap;

.field public final isPaused:Z

.field public final isPrivate:Z

.field public final listener:Lorg/chromium/chrome/browser/media/ui/MediaNotificationListener;

.field private final mActions:I

.field public final metadata:Lorg/chromium/content_public/common/MediaMetadata;

.field public final origin:Ljava/lang/String;

.field public final tabId:I


# direct methods
.method private constructor <init>(Lorg/chromium/content_public/common/MediaMetadata;ZLjava/lang/String;IZIIILandroid/graphics/Bitmap;Landroid/content/Intent;Lorg/chromium/chrome/browser/media/ui/MediaNotificationListener;)V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->metadata:Lorg/chromium/content_public/common/MediaMetadata;

    .line 239
    iput-boolean p2, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->isPaused:Z

    .line 240
    iput-object p3, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->origin:Ljava/lang/String;

    .line 241
    iput p4, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->tabId:I

    .line 242
    iput-boolean p5, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->isPrivate:Z

    .line 243
    iput p6, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->icon:I

    .line 244
    iput p7, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->mActions:I

    .line 245
    iput p8, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->id:I

    .line 246
    iput-object p10, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->contentIntent:Landroid/content/Intent;

    .line 247
    iput-object p9, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->image:Landroid/graphics/Bitmap;

    .line 248
    iput-object p11, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->listener:Lorg/chromium/chrome/browser/media/ui/MediaNotificationListener;

    .line 249
    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/content_public/common/MediaMetadata;ZLjava/lang/String;IZIIILandroid/graphics/Bitmap;Landroid/content/Intent;Lorg/chromium/chrome/browser/media/ui/MediaNotificationListener;Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$1;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p11}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;-><init>(Lorg/chromium/content_public/common/MediaMetadata;ZLjava/lang/String;IZIIILandroid/graphics/Bitmap;Landroid/content/Intent;Lorg/chromium/chrome/browser/media/ui/MediaNotificationListener;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 253
    if-ne p1, p0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return v0

    .line 254
    :cond_1
    instance-of v2, p1, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 256
    :cond_2
    check-cast p1, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    .line 257
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->isPaused:Z

    iget-boolean v3, p1, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->isPaused:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->isPrivate:Z

    iget-boolean v3, p1, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->isPrivate:Z

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->tabId:I

    iget v3, p1, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->tabId:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->icon:I

    iget v3, p1, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->icon:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->mActions:I

    iget v3, p1, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->mActions:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->id:I

    iget v3, p1, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->id:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->metadata:Lorg/chromium/content_public/common/MediaMetadata;

    iget-object v3, p1, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->metadata:Lorg/chromium/content_public/common/MediaMetadata;

    invoke-virtual {v2, v3}, Lorg/chromium/content_public/common/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->origin:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->origin:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->image:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->image:Landroid/graphics/Bitmap;

    if-eq v2, v3, :cond_0

    :cond_3
    iget-object v2, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->image:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->image:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->contentIntent:Landroid/content/Intent;

    iget-object v3, p1, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->contentIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->listener:Lorg/chromium/chrome/browser/media/ui/MediaNotificationListener;

    iget-object v3, p1, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->listener:Lorg/chromium/chrome/browser/media/ui/MediaNotificationListener;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 272
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->isPaused:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 273
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->isPrivate:Z

    if-eqz v3, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 274
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->metadata:Lorg/chromium/content_public/common/MediaMetadata;

    if-nez v0, :cond_2

    move v0, v2

    :goto_2
    add-int/2addr v0, v1

    .line 275
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->origin:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v2

    :goto_3
    add-int/2addr v0, v1

    .line 276
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->image:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    move v0, v2

    :goto_4
    add-int/2addr v0, v1

    .line 277
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->contentIntent:Landroid/content/Intent;

    if-nez v1, :cond_5

    :goto_5
    add-int/2addr v0, v2

    .line 278
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->tabId:I

    add-int/2addr v0, v1

    .line 279
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->icon:I

    add-int/2addr v0, v1

    .line 280
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->mActions:I

    add-int/2addr v0, v1

    .line 281
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->id:I

    add-int/2addr v0, v1

    .line 282
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->listener:Lorg/chromium/chrome/browser/media/ui/MediaNotificationListener;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 283
    return v0

    :cond_0
    move v0, v2

    .line 272
    goto :goto_0

    :cond_1
    move v1, v2

    .line 273
    goto :goto_1

    .line 274
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->metadata:Lorg/chromium/content_public/common/MediaMetadata;

    invoke-virtual {v0}, Lorg/chromium/content_public/common/MediaMetadata;->hashCode()I

    move-result v0

    goto :goto_2

    .line 275
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->origin:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    .line 276
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_4

    .line 277
    :cond_5
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->contentIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5
.end method

.method public supportsPlayPause()Z
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->mActions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportsStop()Z
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->mActions:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportsSwipeAway()Z
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->mActions:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

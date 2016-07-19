.class public abstract Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;
.super Ljava/lang/Object;
.source "NotificationBuilderBase.java"


# static fields
.field static final MAX_CHARSEQUENCE_LENGTH:I = 0x1400


# instance fields
.field protected mActions:Ljava/util/List;

.field protected mBody:Ljava/lang/CharSequence;

.field protected mContentIntent:Landroid/app/PendingIntent;

.field protected mDefaults:I

.field protected mDeleteIntent:Landroid/app/PendingIntent;

.field protected mLargeIcon:Landroid/graphics/Bitmap;

.field protected mOrigin:Ljava/lang/CharSequence;

.field protected mRenotify:Z

.field protected mSettingsAction:Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;

.field protected mSmallIconBitmap:Landroid/graphics/Bitmap;

.field protected mSmallIconId:I

.field protected mTickerText:Ljava/lang/CharSequence;

.field protected mTimestamp:J

.field protected mTitle:Ljava/lang/CharSequence;

.field protected mVibratePattern:[J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->mActions:Ljava/util/List;

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->mDefaults:I

    return-void
.end method

.method protected static addActionToBuilder(Landroid/app/Notification$Builder;Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;)V
    .locals 4

    .prologue
    .line 262
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p1, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;->iconBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p1, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 264
    new-instance v1, Landroid/app/Notification$Action$Builder;

    iget-object v2, p1, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;->title:Ljava/lang/CharSequence;

    iget-object v3, p1, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;->intent:Landroid/app/PendingIntent;

    invoke-direct {v1, v0, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_0
    iget v0, p1, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;->iconId:I

    iget-object v1, p1, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;->title:Ljava/lang/CharSequence;

    iget-object v2, p1, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;->intent:Landroid/app/PendingIntent;

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_0
.end method

.method static applyWhiteOverlayToBitmap(Landroid/graphics/Bitmap;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 277
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 278
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const/4 v2, -0x1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 279
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 280
    invoke-virtual {v1, p0, v4, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 281
    return-void
.end method

.method private static limitLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/16 v1, 0x1400

    .line 232
    if-nez p0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-object p0

    .line 235
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 236
    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0
.end method

.method protected static setSmallIconOnBuilder(Landroid/app/Notification$Builder;ILandroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 248
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 249
    invoke-static {p2}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 253
    :goto_0
    return-void

    .line 251
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_0
.end method


# virtual methods
.method public addAction(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 172
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot add more than 2 actions."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    if-eqz p1, :cond_1

    .line 176
    invoke-static {p1}, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->applyWhiteOverlayToBitmap(Landroid/graphics/Bitmap;)V

    .line 178
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->mActions:Ljava/util/List;

    new-instance v1, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;

    invoke-static {p2}, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->limitLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p1, v2, p3}, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;-><init>(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    return-object p0
.end method

.method public addSettingsAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;
    .locals 2

    .prologue
    .line 187
    new-instance v0, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;

    invoke-static {p2}, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->limitLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, p1, v1, p3}, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->mSettingsAction:Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;

    .line 188
    return-object p0
.end method

.method public abstract build()Landroid/app/Notification;
.end method

.method public setBody(Ljava/lang/CharSequence;)Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;
    .locals 1

    .prologue
    .line 97
    invoke-static {p1}, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->limitLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->mBody:Ljava/lang/CharSequence;

    .line 98
    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->mContentIntent:Landroid/app/PendingIntent;

    .line 153
    return-object p0
.end method

.method public setDefaults(I)Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;
    .locals 0

    .prologue
    .line 202
    iput p1, p0, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->mDefaults:I

    .line 203
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 162
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->mLargeIcon:Landroid/graphics/Bitmap;

    .line 122
    return-object p0
.end method

.method public setOrigin(Ljava/lang/CharSequence;)Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;
    .locals 1

    .prologue
    .line 105
    invoke-static {p1}, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->limitLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->mOrigin:Ljava/lang/CharSequence;

    .line 106
    return-object p0
.end method

.method public setRenotify(Z)Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;
    .locals 0

    .prologue
    .line 226
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->mRenotify:Z

    .line 227
    return-object p0
.end method

.method public setSmallIcon(I)Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;
    .locals 0

    .prologue
    .line 131
    iput p1, p0, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->mSmallIconId:I

    .line 132
    return-object p0
.end method

.method public setSmallIcon(Landroid/graphics/Bitmap;)Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;
    .locals 0

    .prologue
    .line 141
    if-eqz p1, :cond_0

    .line 142
    invoke-static {p1}, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->applyWhiteOverlayToBitmap(Landroid/graphics/Bitmap;)V

    .line 144
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->mSmallIconBitmap:Landroid/graphics/Bitmap;

    .line 145
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;
    .locals 1

    .prologue
    .line 113
    invoke-static {p1}, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->limitLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->mTickerText:Ljava/lang/CharSequence;

    .line 114
    return-object p0
.end method

.method public setTimestamp(J)Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;
    .locals 1

    .prologue
    .line 218
    iput-wide p1, p0, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->mTimestamp:J

    .line 219
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;
    .locals 1

    .prologue
    .line 89
    invoke-static {p1}, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->limitLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->mTitle:Ljava/lang/CharSequence;

    .line 90
    return-object p0
.end method

.method public setVibrate([J)Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;
    .locals 1

    .prologue
    .line 210
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->mVibratePattern:[J

    .line 211
    return-object p0
.end method

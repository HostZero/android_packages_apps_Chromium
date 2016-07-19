.class public Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;
.super Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;
.source "CustomNotificationBuilder.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;-><init>()V

    .line 78
    iput-object p1, p0, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->mContext:Landroid/content/Context;

    .line 79
    return-void
.end method

.method private addActionButtons(Landroid/widget/RemoteViews;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 158
    sget v0, Lorg/chromium/chrome/R$id;->buttons:I

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 162
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    .line 163
    :goto_0
    sget v1, Lorg/chromium/chrome/R$id;->button_divider:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 164
    sget v1, Lorg/chromium/chrome/R$id;->buttons:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 166
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 167
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 168
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;

    .line 169
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$layout;->web_notification_button:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 173
    iget-object v1, v6, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;->iconBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    iget v1, v6, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;->iconId:I

    if-eqz v1, :cond_2

    .line 174
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->useMaterial()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    sget v1, Lorg/chromium/chrome/R$id;->button_icon:I

    const-string/jumbo v2, "setColorFilter"

    const v4, -0x8a8a8b

    invoke-virtual {v0, v1, v2, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 179
    :cond_1
    iget-object v1, v6, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;->iconBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 180
    sget v1, Lorg/chromium/chrome/R$id;->button_icon:I

    iget-object v2, v6, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 181
    iget-object v1, v6, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 189
    :goto_2
    int-to-float v1, v1

    invoke-static {v1, v8}, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->pxToDp(FLandroid/util/DisplayMetrics;)I

    move-result v1

    const/16 v2, 0x20

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1, v8}, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->dpToPx(FLandroid/util/DisplayMetrics;)I

    move-result v1

    .line 195
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2, v8}, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->dpToPx(FLandroid/util/DisplayMetrics;)I

    move-result v2

    add-int/2addr v1, v2

    .line 198
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    .line 199
    :goto_3
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v1

    .line 200
    :goto_4
    sget v1, Lorg/chromium/chrome/R$id;->button:I

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 203
    :cond_2
    sget v1, Lorg/chromium/chrome/R$id;->button:I

    iget-object v2, v6, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 204
    sget v1, Lorg/chromium/chrome/R$id;->button:I

    iget-object v2, v6, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 205
    sget v1, Lorg/chromium/chrome/R$id;->buttons:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    goto/16 :goto_1

    :cond_3
    move v0, v3

    .line 162
    goto/16 :goto_0

    .line 182
    :cond_4
    iget v1, v6, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;->iconId:I

    if-eqz v1, :cond_8

    .line 183
    sget v1, Lorg/chromium/chrome/R$id;->button_icon:I

    iget v2, v6, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;->iconId:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 184
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 185
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 186
    iget v2, v6, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;->iconId:I

    invoke-static {v7, v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 187
    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    goto :goto_2

    :cond_5
    move v2, v1

    .line 198
    goto :goto_3

    :cond_6
    move v4, v3

    .line 199
    goto :goto_4

    .line 207
    :cond_7
    return-void

    :cond_8
    move v1, v3

    goto :goto_2
.end method

.method private addWorkProfileBadge(Landroid/widget/RemoteViews;)V
    .locals 5

    .prologue
    .line 223
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 225
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2, v1}, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->dpToPx(FLandroid/util/DisplayMetrics;)I

    move-result v2

    .line 226
    mul-int v3, v2, v2

    new-array v3, v3, [I

    .line 229
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v2, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 231
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 232
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0, v3, v2, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getUserBadgedDrawableForDensity(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 237
    if-eq v3, v0, :cond_0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 238
    sget v1, Lorg/chromium/chrome/R$id;->work_profile_badge:I

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 240
    sget v0, Lorg/chromium/chrome/R$id;->work_profile_badge:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 242
    :cond_0
    return-void
.end method

.method static calculateMaxBodyLines(F)I
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 255
    cmpl-float v0, p0, v1

    if-lez v0, :cond_0

    .line 256
    div-float v0, v1, p0

    const/high16 v1, 0x40e00000    # 7.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 258
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method

.method static calculateScaledPadding(FLandroid/util/DisplayMetrics;)I
    .locals 3

    .prologue
    const v2, 0x3fa66666    # 1.3f

    const/high16 v0, 0x3f800000    # 1.0f

    .line 273
    .line 274
    cmpl-float v1, p0, v0

    if-lez v1, :cond_0

    .line 275
    invoke-static {p0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 276
    sub-float v0, v2, v0

    const v1, 0x3e999998    # 0.29999995f

    div-float/2addr v0, v1

    .line 278
    :cond_0
    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->dpToPx(FLandroid/util/DisplayMetrics;)I

    move-result v0

    return v0
.end method

.method private configureSettingsButton(Landroid/widget/RemoteViews;)V
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->mSettingsAction:Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;

    if-nez v0, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    sget v0, Lorg/chromium/chrome/R$id;->origin:I

    iget-object v1, p0, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->mSettingsAction:Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;

    iget-object v1, v1, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;->intent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 214
    invoke-static {}, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->useMaterial()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    sget v0, Lorg/chromium/chrome/R$id;->origin_settings_icon:I

    const-string/jumbo v1, "setColorFilter"

    const v2, -0x8a8a8b

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method private static dpToPx(FLandroid/util/DisplayMetrics;)I
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private static pxToDp(FLandroid/util/DisplayMetrics;)I
    .locals 2

    .prologue
    .line 292
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    div-float v0, p0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method static useMaterial()Z
    .locals 2

    .prologue
    .line 300
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 91
    new-instance v8, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$layout;->web_notification:I

    invoke-direct {v8, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 93
    new-instance v9, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$layout;->web_notification_big:I

    invoke-direct {v9, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 96
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 97
    sget v1, Lorg/chromium/chrome/R$id;->body:I

    const-string/jumbo v3, "setMaxLines"

    invoke-static {v0}, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->calculateMaxBodyLines(F)I

    move-result v4

    invoke-virtual {v9, v1, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 98
    iget-object v1, p0, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->calculateScaledPadding(FLandroid/util/DisplayMetrics;)I

    move-result v3

    .line 100
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 101
    new-array v11, v12, [Landroid/widget/RemoteViews;

    aput-object v8, v11, v2

    aput-object v9, v11, v6

    move v7, v2

    :goto_0
    if-ge v7, v12, :cond_2

    aget-object v0, v11, v7

    .line 102
    sget v1, Lorg/chromium/chrome/R$id;->time:I

    invoke-virtual {v0, v1, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 103
    sget v1, Lorg/chromium/chrome/R$id;->title:I

    iget-object v4, p0, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 104
    sget v1, Lorg/chromium/chrome/R$id;->body:I

    iget-object v4, p0, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->mBody:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 105
    sget v1, Lorg/chromium/chrome/R$id;->origin:I

    iget-object v4, p0, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->mOrigin:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 106
    sget v1, Lorg/chromium/chrome/R$id;->icon:I

    iget-object v4, p0, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->mLargeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 107
    sget v1, Lorg/chromium/chrome/R$id;->title:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 108
    sget v1, Lorg/chromium/chrome/R$id;->body_container:I

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 109
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->addWorkProfileBadge(Landroid/widget/RemoteViews;)V

    .line 111
    invoke-static {}, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->useMaterial()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lorg/chromium/chrome/R$id;->small_icon_overlay:I

    .line 112
    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 113
    iget-object v4, p0, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->mSmallIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 114
    iget-object v4, p0, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->mSmallIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 101
    :goto_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 111
    :cond_0
    sget v1, Lorg/chromium/chrome/R$id;->small_icon_footer:I

    goto :goto_1

    .line 116
    :cond_1
    iget v4, p0, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->mSmallIconId:I

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_2

    .line 119
    :cond_2
    invoke-direct {p0, v9}, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->addActionButtons(Landroid/widget/RemoteViews;)V

    .line 120
    invoke-direct {p0, v9}, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->configureSettingsButton(Landroid/widget/RemoteViews;)V

    .line 124
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 125
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->mTickerText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 126
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->mContentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 127
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->mDeleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 128
    iget v0, p0, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->mDefaults:I

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 129
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->mVibratePattern:[J

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 130
    iget-wide v4, p0, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->mTimestamp:J

    invoke-virtual {v1, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 131
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->mRenotify:Z

    if-nez v0, :cond_3

    move v2, v6

    :cond_3
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 132
    invoke-virtual {v1, v8}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 136
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 137
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->mBody:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 138
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->mOrigin:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 139
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->mLargeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 140
    iget v0, p0, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->mSmallIconId:I

    iget-object v2, p0, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->mSmallIconBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v0, v2}, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->setSmallIconOnBuilder(Landroid/app/Notification$Builder;ILandroid/graphics/Bitmap;)V

    .line 141
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;

    .line 142
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->addActionToBuilder(Landroid/app/Notification$Builder;Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;)V

    goto :goto_3

    .line 144
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->mSettingsAction:Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;

    if-eqz v0, :cond_5

    .line 145
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->mSettingsAction:Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;

    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;->addActionToBuilder(Landroid/app/Notification$Builder;Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;)V

    .line 148
    :cond_5
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 149
    iput-object v9, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 150
    return-object v0
.end method

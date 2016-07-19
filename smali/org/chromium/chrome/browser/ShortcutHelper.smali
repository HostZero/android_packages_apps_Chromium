.class public Lorg/chromium/chrome/browser/ShortcutHelper;
.super Ljava/lang/Object;
.source "ShortcutHelper.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final EXTRA_BACKGROUND_COLOR:Ljava/lang/String; = "org.chromium.chrome.browser.background_color"

.field public static final EXTRA_ICON:Ljava/lang/String; = "org.chromium.chrome.browser.webapp_icon"

.field public static final EXTRA_ID:Ljava/lang/String; = "org.chromium.chrome.browser.webapp_id"

.field public static final EXTRA_IS_ICON_GENERATED:Ljava/lang/String; = "org.chromium.chrome.browser.is_icon_generated"

.field public static final EXTRA_MAC:Ljava/lang/String; = "org.chromium.chrome.browser.webapp_mac"

.field public static final EXTRA_NAME:Ljava/lang/String; = "org.chromium.chrome.browser.webapp_name"

.field public static final EXTRA_ORIENTATION:Ljava/lang/String; = "org.chromium.content_public.common.orientation"

.field public static final EXTRA_SHORT_NAME:Ljava/lang/String; = "org.chromium.chrome.browser.webapp_short_name"

.field public static final EXTRA_SOURCE:Ljava/lang/String; = "org.chromium.chrome.browser.webapp_source"

.field public static final EXTRA_THEME_COLOR:Ljava/lang/String; = "org.chromium.chrome.browser.theme_color"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "org.chromium.chrome.browser.webapp_title"

.field public static final EXTRA_URL:Ljava/lang/String; = "org.chromium.chrome.browser.webapp_url"

.field public static final MANIFEST_COLOR_INVALID_OR_MISSING:J = 0x80000000L

.field public static final REUSE_URL_MATCHING_TAB_ELSE_NEW_TAB:Ljava/lang/String; = "REUSE_URL_MATCHING_TAB_ELSE_NEW_TAB"

.field private static sDelegate:Lorg/chromium/chrome/browser/ShortcutHelper$Delegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lorg/chromium/chrome/browser/ShortcutHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/ShortcutHelper;->$assertionsDisabled:Z

    .line 107
    new-instance v0, Lorg/chromium/chrome/browser/ShortcutHelper$Delegate;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/ShortcutHelper$Delegate;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/ShortcutHelper;->sDelegate:Lorg/chromium/chrome/browser/ShortcutHelper$Delegate;

    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method private static addShortcut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZIIJJZ)V
    .locals 6

    .prologue
    .line 129
    if-eqz p7, :cond_0

    .line 131
    invoke-static {p6}, Lorg/chromium/chrome/browser/ShortcutHelper;->encodeBitmapAsString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v3

    .line 134
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 135
    sget-object v4, Lorg/chromium/chrome/browser/ShortcutHelper;->sDelegate:Lorg/chromium/chrome/browser/ShortcutHelper$Delegate;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/ShortcutHelper$Delegate;->getFullscreenAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "org.chromium.chrome.browser.webapp_icon"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "org.chromium.chrome.browser.webapp_id"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "org.chromium.chrome.browser.webapp_name"

    invoke-virtual {v3, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "org.chromium.chrome.browser.webapp_short_name"

    invoke-virtual {v3, v4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "org.chromium.chrome.browser.webapp_url"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "org.chromium.content_public.common.orientation"

    invoke-virtual {v3, v4, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "org.chromium.chrome.browser.webapp_mac"

    invoke-static {p0, p2}, Lorg/chromium/chrome/browser/ShortcutHelper;->getEncodedMac(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "org.chromium.chrome.browser.theme_color"

    move-wide/from16 v0, p10

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "org.chromium.chrome.browser.background_color"

    move-wide/from16 v0, p12

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "org.chromium.chrome.browser.is_icon_generated"

    move/from16 v0, p14

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 153
    :goto_0
    const-string/jumbo v3, "org.chromium.chrome.browser.webapp_source"

    invoke-virtual {v2, v3, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    sget-object v3, Lorg/chromium/chrome/browser/ShortcutHelper;->sDelegate:Lorg/chromium/chrome/browser/ShortcutHelper$Delegate;

    invoke-static {p2, p3, p6, v2}, Lorg/chromium/chrome/browser/ShortcutHelper;->createAddToHomeIntent(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v3, p0, v2}, Lorg/chromium/chrome/browser/ShortcutHelper$Delegate;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 159
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 160
    new-instance v3, Lorg/chromium/chrome/browser/ShortcutHelper$1;

    invoke-direct {v3, p3}, Lorg/chromium/chrome/browser/ShortcutHelper$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 170
    return-void

    .line 148
    :cond_0
    invoke-static {p2}, Lorg/chromium/chrome/browser/ShortcutHelper;->createShortcutIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_0
.end method

.method public static createAddToHomeIntent(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 196
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    const-string/jumbo v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 198
    const-string/jumbo v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string/jumbo v1, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 200
    return-object v0
.end method

.method public static createHomeScreenIconFromWebIcon(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 268
    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 269
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fa00000    # 1.25f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 270
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 271
    const v1, 0x3d3a2e8c

    int-to-float v2, v0

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 272
    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    .line 276
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 283
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 284
    new-instance v4, Landroid/graphics/Rect;

    sub-int v5, v2, v1

    sub-int v6, v2, v1

    invoke-direct {v4, v1, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 285
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v7}, Landroid/graphics/Paint;-><init>(I)V

    .line 286
    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 287
    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 290
    const/high16 v5, 0x3d800000    # 0.0625f

    int-to-float v2, v2

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 291
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 292
    sget-object v6, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v5, v6}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 293
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 294
    int-to-float v4, v2

    int-to-float v2, v2

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v4, v2, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 295
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 296
    invoke-virtual {v3, v5, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object p1, v0

    .line 298
    :goto_0
    return-object p1

    .line 278
    :catch_0
    move-exception v0

    const-string/jumbo v0, "ShortcutHelper"

    const-string/jumbo v1, "OutOfMemoryError while creating bitmap for home screen icon."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static createShortcutIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 221
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 222
    const-string/jumbo v1, "REUSE_URL_MATCHING_TAB_ELSE_NEW_TAB"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 223
    return-object v0
.end method

.method public static decodeBitmapFromString(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 371
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 373
    :goto_0
    return-object v0

    .line 372
    :cond_0
    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 373
    array-length v1, v0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static encodeBitmapAsString(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 358
    if-nez p0, :cond_0

    const-string/jumbo v0, ""

    .line 361
    :goto_0
    return-object v0

    .line 359
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 360
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 361
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static generateHomeScreenIcon(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 315
    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 316
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v2

    .line 317
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v0

    .line 321
    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 327
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 330
    const v1, 0x3daaaaab

    int-to-float v3, v2

    mul-float/2addr v1, v3

    float-to-int v9, v1

    .line 331
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v4, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 332
    sget v3, Lorg/chromium/chrome/R$mipmap;->bookmark_widget_bg:I

    invoke-static {p0, v3, v0}, Lorg/chromium/chrome/browser/ShortcutHelper;->getBitmapFromResourceId(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 334
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 335
    invoke-virtual {v8, v0, v6, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 338
    mul-int/lit8 v0, v9, 0x2

    sub-int v1, v2, v0

    .line 339
    const/high16 v0, 0x3d800000    # 0.0625f

    int-to-float v3, v2

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 340
    const v0, 0x3eaaaaab

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 341
    invoke-static {p2, p3, p4}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    .line 342
    new-instance v0, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;

    int-to-float v5, v2

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;-><init>(IIIIF)V

    .line 344
    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->generateIconForUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 345
    if-nez v0, :cond_0

    move-object v0, v6

    .line 348
    :goto_0
    return-object v0

    .line 323
    :catch_0
    move-exception v0

    const-string/jumbo v0, "ShortcutHelper"

    const-string/jumbo v1, "OutOfMemoryError while trying to draw bitmap on canvas."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v6

    .line 324
    goto :goto_0

    .line 346
    :cond_0
    int-to-float v1, v9

    int-to-float v2, v9

    invoke-virtual {v8, v0, v1, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object v0, v7

    .line 348
    goto :goto_0
.end method

.method private static getBitmapFromResourceId(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 452
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/chromium/base/ApiCompatibilityUtils;->getDrawableForDensity(Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 455
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 456
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 457
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 460
    :goto_0
    return-object v0

    .line 459
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/ShortcutHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "The drawable was not a bitmap drawable as expected"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 460
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEncodedMac(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 426
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/webapps/WebappAuthenticator;->getMacForUrl(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    .line 427
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getHomeScreenIconAndSplashImageSizes(Landroid/content/Context;)[I
    .locals 3

    .prologue
    .line 437
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-static {p0}, Lorg/chromium/chrome/browser/ShortcutHelper;->getIdealHomescreenIconSizeInDp(Landroid/content/Context;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p0}, Lorg/chromium/chrome/browser/ShortcutHelper;->getMinimumHomescreenIconSizeInDp(Landroid/content/Context;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p0}, Lorg/chromium/chrome/browser/ShortcutHelper;->getIdealSplashImageSizeInDp(Landroid/content/Context;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p0}, Lorg/chromium/chrome/browser/ShortcutHelper;->getMinimumSplashImageSizeInDp(Landroid/content/Context;)I

    move-result v2

    aput v2, v0, v1

    return-object v0
.end method

.method public static getIdealHomescreenIconSizeInDp(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 383
    sget v0, Lorg/chromium/chrome/R$dimen;->webapp_home_screen_icon_size:I

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/ShortcutHelper;->getIdealSizeFromResourceInDp(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method private static getIdealSizeFromResourceInDp(Landroid/content/Context;I)I
    .locals 2

    .prologue
    .line 446
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 447
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 448
    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static getIdealSplashImageSizeInDp(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 407
    sget v0, Lorg/chromium/chrome/R$dimen;->webapp_splash_image_size_ideal:I

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/ShortcutHelper;->getIdealSizeFromResourceInDp(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getMinimumHomescreenIconSizeInDp(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 393
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->webapp_home_screen_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 394
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 395
    div-float/2addr v0, v1

    .line 397
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v1, v2

    mul-float/2addr v0, v2

    .line 398
    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static getMinimumSplashImageSizeInDp(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 416
    sget v0, Lorg/chromium/chrome/R$dimen;->webapp_splash_image_size_minimum:I

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/ShortcutHelper;->getIdealSizeFromResourceInDp(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static isAddToHomeIntentSupported(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 232
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 233
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 236
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIconLargeEnoughForLauncher(Landroid/content/Context;II)Z
    .locals 1

    .prologue
    .line 248
    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 249
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 250
    if-lt p1, v0, :cond_0

    if-lt p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setDelegateForTests(Lorg/chromium/chrome/browser/ShortcutHelper$Delegate;)V
    .locals 0

    .prologue
    .line 114
    sput-object p0, Lorg/chromium/chrome/browser/ShortcutHelper;->sDelegate:Lorg/chromium/chrome/browser/ShortcutHelper$Delegate;

    .line 115
    return-void
.end method

.method private static storeWebappData(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 182
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/webapps/WebappRegistry;->registerWebapp(Landroid/content/Context;Ljava/lang/String;)V

    .line 183
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/webapps/WebappDataStorage;->open(Landroid/content/Context;Ljava/lang/String;)Lorg/chromium/chrome/browser/webapps/WebappDataStorage;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/chromium/chrome/browser/webapps/WebappDataStorage;->updateSplashScreenImage(Landroid/graphics/Bitmap;)V

    .line 184
    return-void
.end method

.class public Lorg/chromium/ui/UiUtils;
.super Ljava/lang/Object;
.source "UiUtils.java"


# static fields
.field public static final EXTERNAL_IMAGE_FILE_PATH:Ljava/lang/String; = "browser-images"

.field public static final IMAGE_FILE_PATH:Ljava/lang/String; = "images"

.field private static sKeyboardShowingDelegate:Lorg/chromium/ui/UiUtils$KeyboardShowingDelegate;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static generateScaledScreenshot(Landroid/view/View;ILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 17

    .prologue
    .line 219
    const/4 v3, 0x0

    .line 220
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v6

    .line 222
    const/4 v2, 0x1

    :try_start_0
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lorg/chromium/ui/UiUtils;->prepareViewHierarchyForScreenshot(Landroid/view/View;Z)V

    .line 223
    if-nez v6, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 226
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 227
    if-eqz v5, :cond_4

    .line 228
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-double v8, v2

    .line 229
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v10, v2

    .line 230
    double-to-int v4, v10

    .line 231
    double-to-int v2, v8

    .line 232
    if-lez p1, :cond_1

    .line 233
    move/from16 v0, p1

    int-to-double v12, v0

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    div-double/2addr v12, v14

    .line 234
    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v4, v10

    .line 235
    mul-double/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v2, v8

    .line 237
    :cond_1
    const/4 v7, 0x1

    invoke-static {v5, v4, v2, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 239
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    move-object/from16 v0, p2

    if-eq v4, v0, :cond_2

    .line 240
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 241
    :try_start_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 266
    :cond_2
    :goto_0
    if-nez v6, :cond_3

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 267
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lorg/chromium/ui/UiUtils;->prepareViewHierarchyForScreenshot(Landroid/view/View;Z)V

    .line 269
    :goto_1
    return-object v2

    .line 246
    :cond_4
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-lez v2, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-lez v2, :cond_8

    .line 247
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-double v8, v2

    .line 248
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-double v10, v2

    .line 249
    double-to-int v4, v10

    .line 250
    double-to-int v2, v8

    .line 251
    if-lez p1, :cond_7

    .line 252
    move/from16 v0, p1

    int-to-double v4, v0

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    div-double v12, v4, v12

    .line 253
    mul-double v4, v10, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    .line 254
    mul-double/2addr v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-int v2, v12

    move v5, v4

    move v4, v2

    .line 256
    :goto_2
    move-object/from16 v0, p2

    invoke-static {v5, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 257
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 258
    int-to-double v12, v5

    div-double v10, v12, v10

    double-to-float v5, v10

    int-to-double v10, v4

    div-double v8, v10, v8

    double-to-float v4, v8

    invoke-virtual {v7, v5, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 260
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 263
    :catch_0
    move-exception v2

    move-object/from16 v16, v2

    move-object v2, v3

    move-object/from16 v3, v16

    .line 264
    :goto_3
    :try_start_3
    const-string/jumbo v4, "UiUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Unable to capture screenshot and scale it down."

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 266
    if-nez v6, :cond_5

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 267
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lorg/chromium/ui/UiUtils;->prepareViewHierarchyForScreenshot(Landroid/view/View;Z)V

    goto :goto_1

    .line 266
    :catchall_0
    move-exception v2

    if-nez v6, :cond_6

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 267
    :cond_6
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lorg/chromium/ui/UiUtils;->prepareViewHierarchyForScreenshot(Landroid/view/View;Z)V

    throw v2

    .line 263
    :catch_1
    move-exception v2

    move-object/from16 v16, v2

    move-object v2, v3

    move-object/from16 v3, v16

    goto :goto_3

    :cond_7
    move v5, v4

    move v4, v2

    goto :goto_2

    :cond_8
    move-object v2, v3

    goto/16 :goto_0
.end method

.method public static getDirectoryForImageCapture(Landroid/content/Context;)Ljava/io/File;
    .locals 5

    .prologue
    .line 293
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 296
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 297
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v3, "images"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 298
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_1

    .line 299
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Folder cannot be created."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :catchall_0
    move-exception v0

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0

    .line 302
    :cond_0
    :try_start_1
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 304
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "browser-images"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    .line 313
    :cond_1
    :goto_0
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static getIMELocales(Landroid/content/Context;)Ljava/util/Set;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 152
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 153
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 155
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v6

    move v2, v3

    .line 156
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 157
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v7

    .line 159
    if-eqz v7, :cond_1

    move v4, v3

    .line 160
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_1

    .line 161
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v5, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_0
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 156
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 165
    :cond_2
    return-object v5
.end method

.method public static getUriForImageCaptureFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 326
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Lorg/chromium/base/ContentUriUtils;->getContentUriFromFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static hideKeyboard(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v0

    return v0
.end method

.method public static insertAfter(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)I
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/chromium/ui/UiUtils;->insertView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)I

    move-result v0

    return v0
.end method

.method private static insertView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)I
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 194
    if-ltz v0, :cond_0

    .line 203
    :goto_0
    return v0

    .line 197
    :cond_0
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 198
    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    .line 201
    :cond_1
    if-eqz p3, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 202
    :cond_2
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public static isKeyboardShowing(Landroid/content/Context;Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 131
    sget-object v1, Lorg/chromium/ui/UiUtils;->sKeyboardShowingDelegate:Lorg/chromium/ui/UiUtils$KeyboardShowingDelegate;

    if-eqz v1, :cond_1

    sget-object v1, Lorg/chromium/ui/UiUtils;->sKeyboardShowingDelegate:Lorg/chromium/ui/UiUtils$KeyboardShowingDelegate;

    invoke-interface {v1, p0, p1}, Lorg/chromium/ui/UiUtils$KeyboardShowingDelegate;->disableKeyboardCheck(Landroid/content/Context;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v0

    .line 136
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 137
    if-eqz v1, :cond_0

    .line 138
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 139
    invoke-virtual {v1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 142
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    .line 143
    const/high16 v2, 0x42c80000    # 100.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static prepareViewHierarchyForScreenshot(Landroid/view/View;Z)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 273
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 274
    check-cast p0, Landroid/view/ViewGroup;

    .line 275
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 276
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/chromium/ui/UiUtils;->prepareViewHierarchyForScreenshot(Landroid/view/View;Z)V

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    :cond_0
    instance-of v1, p0, Landroid/view/SurfaceView;

    if-eqz v1, :cond_2

    .line 279
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 281
    :cond_2
    return-void
.end method

.method public static setKeyboardShowingDelegate(Lorg/chromium/ui/UiUtils$KeyboardShowingDelegate;)V
    .locals 0

    .prologue
    .line 79
    sput-object p0, Lorg/chromium/ui/UiUtils;->sKeyboardShowingDelegate:Lorg/chromium/ui/UiUtils$KeyboardShowingDelegate;

    .line 80
    return-void
.end method

.method public static showKeyboard(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 88
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 89
    new-instance v2, Lorg/chromium/ui/UiUtils$1;

    invoke-direct {v2, p0, v1, v0}, Lorg/chromium/ui/UiUtils$1;-><init>(Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/os/Handler;)V

    .line 108
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 109
    return-void
.end method

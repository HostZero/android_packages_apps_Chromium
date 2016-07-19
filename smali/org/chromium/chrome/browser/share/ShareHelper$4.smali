.class final Lorg/chromium/chrome/browser/share/ShareHelper$4;
.super Landroid/os/AsyncTask;
.source "ShareHelper.java"


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$component:Landroid/content/ComponentName;

.field final synthetic val$screenshot:Landroid/graphics/Bitmap;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lorg/chromium/chrome/browser/share/ShareHelper$4;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lorg/chromium/chrome/browser/share/ShareHelper$4;->val$screenshot:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lorg/chromium/chrome/browser/share/ShareHelper$4;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lorg/chromium/chrome/browser/share/ShareHelper$4;->val$url:Ljava/lang/String;

    iput-object p5, p0, Lorg/chromium/chrome/browser/share/ShareHelper$4;->val$component:Landroid/content/ComponentName;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Void;)Ljava/io/File;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 323
    .line 325
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lorg/chromium/chrome/browser/share/ShareHelper$4;->val$activity:Landroid/app/Activity;

    invoke-static {v2}, Lorg/chromium/ui/UiUtils;->getDirectoryForImageCapture(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "screenshot"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 327
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 328
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ".jpg"

    invoke-static {v2, v3, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 331
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :try_start_1
    iget-object v3, p0, Lorg/chromium/chrome/browser/share/ShareHelper$4;->val$screenshot:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x55

    invoke-virtual {v3, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 333
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 334
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 348
    :goto_0
    return-object v0

    .line 339
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_1

    .line 341
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_2
    move-object v0, v1

    .line 348
    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    .line 339
    :catch_2
    move-exception v0

    move-object v0, v2

    goto :goto_1
.end method

.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 320
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/share/ShareHelper$4;->doInBackground([Ljava/lang/Void;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected final onPostExecute(Ljava/io/File;)V
    .locals 5

    .prologue
    .line 353
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getStateForApplication()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 355
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 357
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/share/ShareHelper$4;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lorg/chromium/chrome/browser/share/ShareHelper$4;->val$title:Ljava/lang/String;

    iget-object v3, p0, Lorg/chromium/chrome/browser/share/ShareHelper$4;->val$url:Ljava/lang/String;

    iget-object v4, p0, Lorg/chromium/chrome/browser/share/ShareHelper$4;->val$component:Landroid/content/ComponentName;

    # invokes: Lorg/chromium/chrome/browser/share/ShareHelper;->getDirectShareIntentForComponent(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ComponentName;)Landroid/content/Intent;
    invoke-static {v2, v3, v0, v4}, Lorg/chromium/chrome/browser/share/ShareHelper;->access$400(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    # invokes: Lorg/chromium/chrome/browser/share/ShareHelper;->shareIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/share/ShareHelper;->access$500(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 360
    :cond_0
    return-void

    .line 355
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/share/ShareHelper$4;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lorg/chromium/ui/UiUtils;->getUriForImageCaptureFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 320
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/share/ShareHelper$4;->onPostExecute(Ljava/io/File;)V

    return-void
.end method

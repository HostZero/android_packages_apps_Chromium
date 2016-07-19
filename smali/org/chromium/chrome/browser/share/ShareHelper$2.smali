.class final Lorg/chromium/chrome/browser/share/ShareHelper$2;
.super Landroid/os/AsyncTask;
.source "ShareHelper.java"


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$jpegImageData:[B


# direct methods
.method constructor <init>(Landroid/app/Activity;[B)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lorg/chromium/chrome/browser/share/ShareHelper$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lorg/chromium/chrome/browser/share/ShareHelper$2;->val$jpegImageData:[B

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Void;)Ljava/io/File;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 207
    .line 209
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lorg/chromium/chrome/browser/share/ShareHelper$2;->val$activity:Landroid/app/Activity;

    invoke-static {v2}, Lorg/chromium/ui/UiUtils;->getDirectoryForImageCapture(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "screenshot"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ".jpg"

    invoke-static {v2, v3, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 214
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :try_start_1
    iget-object v3, p0, Lorg/chromium/chrome/browser/share/ShareHelper$2;->val$jpegImageData:[B

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 216
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 217
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 233
    :goto_0
    return-object v0

    .line 221
    :cond_1
    :try_start_2
    const-string/jumbo v0, "share"

    const-string/jumbo v2, "Share failed -- Unable to create share image directory."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_1
    move-object v0, v1

    .line 233
    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_2

    .line 226
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    .line 224
    :catch_2
    move-exception v0

    move-object v0, v2

    goto :goto_2
.end method

.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 204
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/share/ShareHelper$2;->doInBackground([Ljava/lang/Void;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected final onPostExecute(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 238
    if-nez p1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getStateForApplication()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 242
    iget-object v0, p0, Lorg/chromium/chrome/browser/share/ShareHelper$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lorg/chromium/ui/UiUtils;->getUriForImageCaptureFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 244
    # invokes: Lorg/chromium/chrome/browser/share/ShareHelper;->getShareImageIntent(Landroid/net/Uri;)Landroid/content/Intent;
    invoke-static {v0}, Lorg/chromium/chrome/browser/share/ShareHelper;->access$200(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/share/ShareHelper$2;->val$activity:Landroid/app/Activity;

    sget v2, Lorg/chromium/chrome/R$string;->share_link_chooser_title:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lorg/chromium/chrome/browser/share/ShareHelper$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 204
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/share/ShareHelper$2;->onPostExecute(Ljava/io/File;)V

    return-void
.end method

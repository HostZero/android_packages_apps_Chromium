.class Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;
.super Landroid/os/AsyncTask;
.source "SelectFileDialog.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/base/SelectFileDialog;


# direct methods
.method private constructor <init>(Lorg/chromium/ui/base/SelectFileDialog;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;->this$0:Lorg/chromium/ui/base/SelectFileDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/ui/base/SelectFileDialog;Lorg/chromium/ui/base/SelectFileDialog$1;)V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;-><init>(Lorg/chromium/ui/base/SelectFileDialog;)V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 217
    :try_start_0
    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;->this$0:Lorg/chromium/ui/base/SelectFileDialog;

    # getter for: Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;
    invoke-static {v0}, Lorg/chromium/ui/base/SelectFileDialog;->access$100(Lorg/chromium/ui/base/SelectFileDialog;)Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;->this$0:Lorg/chromium/ui/base/SelectFileDialog;

    # invokes: Lorg/chromium/ui/base/SelectFileDialog;->getFileForImageCapture(Landroid/content/Context;)Ljava/io/File;
    invoke-static {v1, v0}, Lorg/chromium/ui/base/SelectFileDialog;->access$200(Lorg/chromium/ui/base/SelectFileDialog;Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/ui/UiUtils;->getUriForImageCaptureFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 221
    :goto_0
    return-object v0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    const-string/jumbo v1, "SelectFileDialog"

    const-string/jumbo v2, "Cannot retrieve content uri from file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 213
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;->doInBackground([Ljava/lang/Void;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 227
    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;->this$0:Lorg/chromium/ui/base/SelectFileDialog;

    # setter for: Lorg/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;
    invoke-static {v0, p1}, Lorg/chromium/ui/base/SelectFileDialog;->access$302(Lorg/chromium/ui/base/SelectFileDialog;Landroid/net/Uri;)Landroid/net/Uri;

    .line 228
    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;->this$0:Lorg/chromium/ui/base/SelectFileDialog;

    # getter for: Lorg/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;
    invoke-static {v0}, Lorg/chromium/ui/base/SelectFileDialog;->access$300(Lorg/chromium/ui/base/SelectFileDialog;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;->this$0:Lorg/chromium/ui/base/SelectFileDialog;

    # invokes: Lorg/chromium/ui/base/SelectFileDialog;->captureCamera()Z
    invoke-static {v0}, Lorg/chromium/ui/base/SelectFileDialog;->access$400(Lorg/chromium/ui/base/SelectFileDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;->this$0:Lorg/chromium/ui/base/SelectFileDialog;

    # invokes: Lorg/chromium/ui/base/SelectFileDialog;->onFileNotSelected()V
    invoke-static {v0}, Lorg/chromium/ui/base/SelectFileDialog;->access$500(Lorg/chromium/ui/base/SelectFileDialog;)V

    .line 243
    :goto_0
    return-void

    .line 233
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 236
    const-string/jumbo v1, "output"

    iget-object v2, p0, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;->this$0:Lorg/chromium/ui/base/SelectFileDialog;

    # getter for: Lorg/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;
    invoke-static {v2}, Lorg/chromium/ui/base/SelectFileDialog;->access$300(Lorg/chromium/ui/base/SelectFileDialog;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 237
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_1

    .line 238
    iget-object v1, p0, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;->this$0:Lorg/chromium/ui/base/SelectFileDialog;

    # getter for: Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;
    invoke-static {v1}, Lorg/chromium/ui/base/SelectFileDialog;->access$100(Lorg/chromium/ui/base/SelectFileDialog;)Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/ui/base/WindowAndroid;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "images"

    iget-object v3, p0, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;->this$0:Lorg/chromium/ui/base/SelectFileDialog;

    # getter for: Lorg/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;
    invoke-static {v3}, Lorg/chromium/ui/base/SelectFileDialog;->access$300(Lorg/chromium/ui/base/SelectFileDialog;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 242
    :cond_1
    iget-object v1, p0, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;->this$0:Lorg/chromium/ui/base/SelectFileDialog;

    const/4 v2, 0x1

    # invokes: Lorg/chromium/ui/base/SelectFileDialog;->launchSelectFileWithCameraIntent(ZLandroid/content/Intent;)V
    invoke-static {v1, v2, v0}, Lorg/chromium/ui/base/SelectFileDialog;->access$600(Lorg/chromium/ui/base/SelectFileDialog;ZLandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 213
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method

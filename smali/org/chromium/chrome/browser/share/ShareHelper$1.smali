.class final Lorg/chromium/chrome/browser/share/ShareHelper$1;
.super Landroid/os/AsyncTask;
.source "ShareHelper.java"


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lorg/chromium/chrome/browser/share/ShareHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 152
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/share/ShareHelper$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .prologue
    .line 156
    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/share/ShareHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/ui/UiUtils;->getDirectoryForImageCapture(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 157
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "screenshot"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    # invokes: Lorg/chromium/chrome/browser/share/ShareHelper;->deleteShareImageFiles(Ljava/io/File;)V
    invoke-static {v1}, Lorg/chromium/chrome/browser/share/ShareHelper;->access$100(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

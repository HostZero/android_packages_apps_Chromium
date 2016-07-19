.class Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate$1;
.super Landroid/os/AsyncTask;
.source "StorageDelegate.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate$1;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/io/File;
    .locals 3

    .prologue
    .line 125
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "ChromeDocumentActivity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 122
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate$1;->doInBackground([Ljava/lang/Void;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

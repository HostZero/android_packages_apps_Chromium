.class Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$9;
.super Landroid/os/AsyncTask;
.source "ChromeBrowserInitializer.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$9;->this$0:Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 385
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$9;->doInBackground([Ljava/lang/Void;)Lorg/chromium/chrome/browser/crash/MinidumpDirectoryObserver;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/chromium/chrome/browser/crash/MinidumpDirectoryObserver;
    .locals 1

    .prologue
    .line 388
    new-instance v0, Lorg/chromium/chrome/browser/crash/MinidumpDirectoryObserver;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/crash/MinidumpDirectoryObserver;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 385
    check-cast p1, Lorg/chromium/chrome/browser/crash/MinidumpDirectoryObserver;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$9;->onPostExecute(Lorg/chromium/chrome/browser/crash/MinidumpDirectoryObserver;)V

    return-void
.end method

.method protected onPostExecute(Lorg/chromium/chrome/browser/crash/MinidumpDirectoryObserver;)V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$9;->this$0:Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;

    # setter for: Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->mMinidumpDirectoryObserver:Lorg/chromium/chrome/browser/crash/MinidumpDirectoryObserver;
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->access$402(Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;Lorg/chromium/chrome/browser/crash/MinidumpDirectoryObserver;)Lorg/chromium/chrome/browser/crash/MinidumpDirectoryObserver;

    .line 394
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$9;->this$0:Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;

    # getter for: Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->mMinidumpDirectoryObserver:Lorg/chromium/chrome/browser/crash/MinidumpDirectoryObserver;
    invoke-static {v0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->access$400(Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;)Lorg/chromium/chrome/browser/crash/MinidumpDirectoryObserver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/crash/MinidumpDirectoryObserver;->startWatching()V

    .line 395
    return-void
.end method

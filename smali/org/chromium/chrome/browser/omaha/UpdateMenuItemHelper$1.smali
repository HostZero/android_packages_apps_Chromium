.class Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper$1;
.super Landroid/os/AsyncTask;
.source "UpdateMenuItemHelper.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;

.field final synthetic val$activity:Lorg/chromium/chrome/browser/ChromeActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;Lorg/chromium/chrome/browser/ChromeActivity;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper$1;->this$0:Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;

    iput-object p2, p0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper$1;->val$activity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper$1;->val$activity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-static {v0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->isNewerVersionAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper$1;->this$0:Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;

    iget-object v1, p0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper$1;->val$activity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-static {v1}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->getMarketURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->mUpdateUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->access$002(Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper$1;->this$0:Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;

    const/4 v1, 0x1

    # setter for: Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->mUpdateAvailable:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->access$102(Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;Z)Z

    .line 123
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper$1;->this$0:Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;

    # invokes: Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->recordInternalStorageSize()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->access$200(Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;)V

    .line 127
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 125
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper$1;->this$0:Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->mUpdateAvailable:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->access$102(Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;Z)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 117
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper$1;->val$activity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->isActivityDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper$1;->val$activity:Lorg/chromium/chrome/browser/ChromeActivity;

    iget-object v1, p0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper$1;->this$0:Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;

    # getter for: Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->mUpdateAvailable:Z
    invoke-static {v1}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->access$100(Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ChromeActivity;->onCheckForUpdate(Z)V

    .line 134
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper$1;->this$0:Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;

    # invokes: Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->recordUpdateHistogram()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->access$300(Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;)V

    goto :goto_0
.end method

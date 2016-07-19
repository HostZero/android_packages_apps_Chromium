.class final Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$2;
.super Landroid/os/AsyncTask;
.source "CustomTabsConnection.java"


# instance fields
.field final synthetic val$chrome:Lorg/chromium/chrome/browser/ChromeApplication;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/ChromeApplication;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$2;->val$chrome:Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 178
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$2;->val$chrome:Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ChromeApplication;->getChildProcessCreationParams()Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/content/browser/ChildProcessLauncher;->warmUp(Landroid/content/Context;Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;)V

    .line 182
    const/4 v0, 0x0

    return-object v0
.end method

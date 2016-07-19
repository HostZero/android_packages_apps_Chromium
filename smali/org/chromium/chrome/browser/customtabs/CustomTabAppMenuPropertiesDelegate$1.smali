.class Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate$1;
.super Landroid/os/AsyncTask;
.source "CustomTabAppMenuPropertiesDelegate.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate;

.field final synthetic val$activity:Lorg/chromium/chrome/browser/ChromeActivity;

.field final synthetic val$isOpenedByChrome:Z


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate;ZLorg/chromium/chrome/browser/ChromeActivity;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate$1;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate;

    iput-boolean p2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate$1;->val$isOpenedByChrome:Z

    iput-object p3, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate$1;->val$activity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 54
    const/4 v0, 0x0

    .line 55
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate$1;->val$isOpenedByChrome:Z

    if-eqz v1, :cond_1

    .line 57
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate$1;->val$activity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-static {v0}, Lorg/chromium/base/BuildInfo;->getPackageLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 68
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate$1;->val$activity:Lorg/chromium/chrome/browser/ChromeActivity;

    sget v1, Lorg/chromium/chrome/R$string;->menu_open_in_product_default:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ChromeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 60
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    const-string/jumbo v3, "https://www.google.com"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 61
    iget-object v2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate$1;->val$activity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/ChromeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 62
    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 63
    if-eqz v1, :cond_0

    iget v3, v1, Landroid/content/pm/ResolveInfo;->match:I

    if-eqz v3, :cond_0

    .line 64
    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 68
    :cond_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate$1;->val$activity:Lorg/chromium/chrome/browser/ChromeActivity;

    sget v2, Lorg/chromium/chrome/R$string;->menu_open_in_product:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/chromium/chrome/browser/ChromeActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

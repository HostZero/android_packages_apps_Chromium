.class Lorg/chromium/ui/widget/Toast$1;
.super Landroid/content/ContextWrapper;
.source "Toast.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/widget/Toast;


# direct methods
.method constructor <init>(Lorg/chromium/ui/widget/Toast;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lorg/chromium/ui/widget/Toast$1;->this$0:Lorg/chromium/ui/widget/Toast;

    invoke-direct {p0, p2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-super {p0}, Landroid/content/ContextWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 56
    const/16 v1, 0x13

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 57
    return-object v0
.end method

.class Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$4;
.super Ljava/lang/Object;
.source "CustomTabActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$4;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    iput-object p2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$4;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 405
    const-string/jumbo v0, "CustomTabs.ServiceClient.PackageName"

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$4;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/rappor/RapporServiceBridge;->sampleString(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    return-void
.end method

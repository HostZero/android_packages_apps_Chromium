.class Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$4;
.super Ljava/lang/Object;
.source "CustomTabsConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$lowConfidence:Z

.field final synthetic val$otherLikelyBundles:Ljava/util/List;

.field final synthetic val$session:Landroid/os/IBinder;

.field final synthetic val$uid:I

.field final synthetic val$urlString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;ZLjava/util/List;Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$4;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    iput-boolean p2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$4;->val$lowConfidence:Z

    iput-object p3, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$4;->val$otherLikelyBundles:Ljava/util/List;

    iput-object p4, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$4;->val$session:Landroid/os/IBinder;

    iput p5, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$4;->val$uid:I

    iput-object p6, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$4;->val$urlString:Ljava/lang/String;

    iput-object p7, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$4;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 349
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$4;->val$lowConfidence:Z

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$4;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$4;->val$otherLikelyBundles:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->lowConfidenceMayLaunchUrl(Ljava/util/List;)Z

    .line 354
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$4;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$4;->val$session:Landroid/os/IBinder;

    iget v2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$4;->val$uid:I

    iget-object v3, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$4;->val$urlString:Ljava/lang/String;

    iget-object v4, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$4;->val$extras:Landroid/os/Bundle;

    iget-object v5, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$4;->val$otherLikelyBundles:Ljava/util/List;

    # invokes: Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->highConfidenceMayLaunchUrl(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V
    invoke-static/range {v0 .. v5}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->access$300(Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V

    goto :goto_0
.end method

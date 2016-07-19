.class Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity$2;
.super Ljava/lang/Object;
.source "PhysicalWebOptInActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity$2;->this$0:Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity$2;->this$0:Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity;

    invoke-static {v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma;->onOptInEnableButtonPressed(Landroid/content/Context;)V

    .line 44
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity$2;->this$0:Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity;

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;

    move-result-object v0

    .line 46
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->setPhysicalWebEnabled(Z)V

    .line 47
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity$2;->this$0:Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity;

    iget-object v1, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity$2;->this$0:Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity;

    # invokes: Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity;->createListUrlsIntent(Landroid/content/Context;)Landroid/content/Intent;
    invoke-static {v1}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity;->access$000(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity;->startActivity(Landroid/content/Intent;)V

    .line 48
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity$2;->this$0:Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity;->finish()V

    .line 49
    return-void
.end method

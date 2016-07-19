.class Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity$1;
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
    .line 28
    iput-object p1, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity$1;->this$0:Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity$1;->this$0:Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity;

    invoke-static {v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma;->onOptInDeclineButtonPressed(Landroid/content/Context;)V

    .line 32
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity$1;->this$0:Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity;

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;

    move-result-object v0

    .line 34
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->setPhysicalWebEnabled(Z)V

    .line 35
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity$1;->this$0:Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity;->finish()V

    .line 36
    return-void
.end method

.class Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences$2;
.super Ljava/lang/Object;
.source "SingleWebsitePreferences.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences$2;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences$2;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    # invokes: Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->resetSite()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->access$600(Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;)V

    .line 627
    return-void
.end method

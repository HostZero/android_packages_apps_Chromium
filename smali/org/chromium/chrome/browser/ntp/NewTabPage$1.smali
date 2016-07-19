.class final Lorg/chromium/chrome/browser/ntp/NewTabPage$1;
.super Ljava/lang/Object;
.source "NewTabPage.java"

# interfaces
.implements Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$InterestsClickListener;


# instance fields
.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$tab:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$1;->val$tab:Lorg/chromium/chrome/browser/tab/Tab;

    iput-object p2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInterestClicked(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$1;->val$tab:Lorg/chromium/chrome/browser/tab/Tab;

    new-instance v1, Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-static {}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getInstance()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getUrlForSearchQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->loadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    .line 198
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 199
    return-void
.end method

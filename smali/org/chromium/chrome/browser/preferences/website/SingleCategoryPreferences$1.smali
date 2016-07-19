.class Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$1;
.super Ljava/lang/Object;
.source "SingleCategoryPreferences.java"

# interfaces
.implements Landroid/support/v7/widget/bo;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$1;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 322
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$1;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    # getter for: Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mSearch:Ljava/lang/String;
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->access$100(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    :goto_0
    return v1

    .line 324
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$1;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    # setter for: Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mSearch:Ljava/lang/String;
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->access$102(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;Ljava/lang/String;)Ljava/lang/String;

    .line 325
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$1;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    # invokes: Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getInfoForOrigins()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->access$1300(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x1

    return v0
.end method

.class Lorg/chromium/ui/resources/system/SystemResourceLoader$1;
.super Ljava/lang/Object;
.source "SystemResourceLoader.java"

# interfaces
.implements Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$ResourceCreator;


# instance fields
.field final synthetic val$minScreenSideLengthPx:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lorg/chromium/ui/resources/system/SystemResourceLoader$1;->val$minScreenSideLengthPx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(I)Lorg/chromium/ui/resources/Resource;
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lorg/chromium/ui/resources/system/SystemResourceLoader$1;->val$minScreenSideLengthPx:I

    # invokes: Lorg/chromium/ui/resources/system/SystemResourceLoader;->createResource(II)Lorg/chromium/ui/resources/Resource;
    invoke-static {v0, p1}, Lorg/chromium/ui/resources/system/SystemResourceLoader;->access$000(II)Lorg/chromium/ui/resources/Resource;

    move-result-object v0

    return-object v0
.end method

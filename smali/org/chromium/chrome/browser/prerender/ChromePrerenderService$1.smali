.class Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$1;
.super Ljava/lang/Object;
.source "ChromePrerenderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/prerender/ChromePrerenderService;

.field final synthetic val$height:I

.field final synthetic val$referrer:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/prerender/ChromePrerenderService;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$1;->this$0:Lorg/chromium/chrome/browser/prerender/ChromePrerenderService;

    iput-object p2, p0, Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$1;->val$referrer:Ljava/lang/String;

    iput p4, p0, Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$1;->val$width:I

    iput p5, p0, Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$1;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 126
    iget-object v0, p0, Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$1;->this$0:Lorg/chromium/chrome/browser/prerender/ChromePrerenderService;

    iget-object v1, p0, Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$1;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$1;->val$referrer:Ljava/lang/String;

    iget v3, p0, Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$1;->val$width:I

    iget v4, p0, Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$1;->val$height:I

    # invokes: Lorg/chromium/chrome/browser/prerender/ChromePrerenderService;->prerenderUrl(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v0, v1, v2, v3, v4}, Lorg/chromium/chrome/browser/prerender/ChromePrerenderService;->access$100(Lorg/chromium/chrome/browser/prerender/ChromePrerenderService;Ljava/lang/String;Ljava/lang/String;II)V

    .line 127
    return-void
.end method

.class Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$ViewInflaterOnDrawListener;
.super Ljava/lang/Object;
.source "ViewResourceInflater.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;


# direct methods
.method private constructor <init>(Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$ViewInflaterOnDrawListener;->this$0:Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$1;)V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$ViewInflaterOnDrawListener;-><init>(Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;)V

    return-void
.end method


# virtual methods
.method public onDraw()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$ViewInflaterOnDrawListener;->this$0:Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;

    # invokes: Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->onDraw()V
    invoke-static {v0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->access$200(Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;)V

    .line 367
    return-void
.end method

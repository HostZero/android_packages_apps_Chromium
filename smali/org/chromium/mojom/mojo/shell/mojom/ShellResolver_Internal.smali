.class Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal;
.super Ljava/lang/Object;
.source "ShellResolver_Internal.java"


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$1;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    return-void
.end method
.class public interface abstract Lorg/chromium/mojom/mojo/shell/mojom/ShellClientFactory;
.super Ljava/lang/Object;
.source "ShellClientFactory.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClientFactory_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClientFactory;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract createShellClient(Lorg/chromium/mojo/bindings/InterfaceRequest;Ljava/lang/String;)V
.end method

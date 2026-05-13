import os
import re
import random

# 预生成的 block math 公式库
block_formulas = [
    r"E = h\nu = \frac{hc}{\lambda}",
    r"\nabla \cdot \mathbf{E} = \frac{\rho}{\varepsilon_0}",
    r"\sigma^2 = \frac{1}{N} \sum_{i=1}^{N} (x_i - \mu)^2",
    r"P(A|B) = \frac{P(B|A)P(A)}{P(B)}",
    r"H\Psi = E\Psi",
    r"F = ma",
    r"a^2 + b^2 = c^2",
    r"\frac{d}{dx} e^x = e^x",
    r"\log_b(xy) = \log_b x + \log_b y",
    r"\binom{n}{k} = \frac{n!}{k!(n-k)!}",
    r"\lim_{n \to \infty} \left(1 + \frac{1}{n}\right)^n = e",
    r"\Gamma(z) = \int_0^{\infty} t^{z-1}e^{-t} dt",
    r"\oint_C \mathbf{F} \cdot d\mathbf{r} = \iint_S (\nabla \times \mathbf{F}) \cdot d\mathbf{S}",
    r"e^{i\pi} + 1 = 0",
    r"\mathbf{a} \cdot \mathbf{b} = |\mathbf{a}||\mathbf{b}|\cos\theta",
    r"\hat{H} = -\frac{\hbar^2}{2m}\nabla^2 + V(\mathbf{r})",
    r"R_{\mu\nu} - \frac{1}{2}g_{\mu\nu}R + g_{\mu\nu}\Lambda = \frac{8\pi G}{c^4}T_{\mu\nu}",
    r"\zeta(s) = \sum_{n=1}^{\infty} \frac{1}{n^s}",
    r"\det(A - \lambda I) = 0",
    r"\frac{\partial u}{\partial t} = D \nabla^2 u",
]

# 预生成的 inline math 公式库
inline_formulas = [
    r"x^2 + y^2 = r^2",
    r"\alpha + \beta = \gamma",
    r"f'(x) = \lim_{h \to 0} \frac{f(x+h)-f(x)}{h}",
    r"E = mc^2",
    r"\vec{F} = m\vec{a}",
    r"\Delta x \cdot \Delta p \geq \frac{\hbar}{2}",
    r"i\hbar\frac{\partial}{\partial t}|\psi\rangle = \hat{H}|\psi\rangle",
    r"c = \lambda f",
    r"PV = nRT",
    r"\sin^2\theta + \cos^2\theta = 1",
]


def replace_block_math(match):
    return f"$$\n{random.choice(block_formulas)}\n$$"


def replace_inline_math(match):
    return f"${random.choice(inline_formulas)}$"


def process_file(filepath):
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()

    original = content

    # Replace block math: $$...$$
    content = re.sub(r'\$\$[\s\S]*?\$\$', replace_block_math, content)

    # Replace inline math: $...$ (but not $$)
    content = re.sub(r'(?<!\$)\$(?!\$)[^\$\n]+?\$(?!\$)', replace_inline_math, content)

    if content != original:
        with open(filepath, 'w', encoding='utf-8') as f:
            f.write(content)
        print(f"Replaced math in: {filepath}")
        return True
    return False


def main():
    count = 0
    for root, dirs, files in os.walk('.'):
        # Skip hidden dirs like .git
        dirs[:] = [d for d in dirs if not d.startswith('.')]
        for fname in files:
            if fname.endswith('.md'):
                filepath = os.path.join(root, fname)
                if process_file(filepath):
                    count += 1
    print(f"\nTotal files modified: {count}")


if __name__ == '__main__':
    main()
